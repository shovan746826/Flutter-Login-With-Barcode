import 'package:flutter/material.dart';
import 'Login/Login.dart';
import 'User/UserList.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    UserList().addUser();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

