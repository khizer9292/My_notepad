import 'dart:io';

void main() {
  print("Welcome to dart !!!");
  print("Enter your name:");
  var instance = Info();
  print(instance.addName());
}

class Info {
  var name = stdin.readLineSync();
  var listNames = [];

  List addName() {
    listNames.add(name);
    print(listNames);

    while (true) {
      print("Are you want Enter another name? yes/no");
      var responce = stdin.readLineSync()?.toLowerCase();
      if (responce == 'yes' || responce == 'y') {
        print('Enter another name again:');
        var againName = stdin.readLineSync();
        listNames.add(againName);
        print(listNames);
      } else if (responce == 'no' || responce == 'n') {
        print("Okay thanks");
        break;
      } else {
        print("Enter valid value please!!!!!!!!!");
      }
    }
    return listNames;
  }
}
