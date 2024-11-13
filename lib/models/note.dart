class Note {
  int? _id;
  String? _title;
  String? _description;
  String? _date;
  int? _priority;

  Note(this._title, this._date, this._priority, [this._description]);
  Note.withId(this._id, this._title, this._date, this._priority,
      [this._description]);
  int? get id => _id;
  String? get title => _title;
  String? get description => _description;
  int? get priority => _priority;
  String? get date => _date;

  set title(String? newTitle) {
    if (newTitle != null && newTitle.length <= 150) {
      _title = newTitle;
    }
  }

  set description(String? newDescription) {
    if (newDescription != null && newDescription.length <= 300) {
      _description = newDescription;
    }
  }

  set priority(int? newPriority) {
    if (newPriority != null && newPriority >= 1 && newPriority <= 2) {
      _priority = newPriority;
    }
  }

  set date(String? newDate) {
    _date = newDate;
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;

    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    _id = map['id'];
    _title = map['title'];
    _description = map['description'];
    _priority = map['priority'];
    _date = map['date'];
  }
}
