

import 'User.dart';

class UserList{

  static List<User> userList=new List();

  void addUser(){
    userList.add(User("Ashiqur Rahman", "ashiqur@gmail.com", "Male", "12345678"));
    userList.add(User("Jhon", "Jhon@gmail.com", "Male", "11223344"));
    userList.add(User("Max", "Max@gmail.com", "Male", "12341234"));
    userList.add(User("Mokbul", "Mokbul@gmail.com", "Male", "87654321"));
  }


  static bool findUser(String barcode){
    for(var user in userList){
      if(user.barcode==barcode){
        return true;
      }
    }
    return false;
  }

}