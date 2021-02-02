import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'UserList.dart';

class UserInfo extends StatelessWidget {
  String barcode = "", userName = "", userEmail = "", userGender = "";

  UserInfo.getData(this.barcode);

  @override
  Widget build(BuildContext context) {
    getUserInfo(barcode);

    return Scaffold(
      appBar: AppBar(
        title: Text("User Info"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Name:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.deepPurple,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "$userName",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Email:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.deepPurple,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "$userEmail",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Gender:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.deepPurple,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "$userGender",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getUserInfo(var barcode) {
    for (var data in UserList.userList) {
      if (barcode == data.barcode) {
        userName = data.name;
        userEmail = data.email;
        userGender = data.gender;
        break;
      }
    }
  }
}
