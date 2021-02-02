import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:login_with_barcode/User/UserInfo.dart';
import 'package:login_with_barcode/User/UserList.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String data = "", textFlag = ""; //for barcode data
  Future _scan() async {
    //scan barcode
    return await FlutterBarcodeScanner.scanBarcode(
        "#000000", "Cancel", true, ScanMode.BARCODE);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Barcode Login"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            "Scan Barcode To Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          color: Colors.deepPurple,
          onPressed: () {
            _scan().then((value) => setState(() {
                  data = value;
                  var flag = UserList.findUser(data);

                  if (flag) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                UserInfo.getData(data)));
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                              "Login Access Denied!",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        });
                  }
                }));
          },
        ),
      ),
    );
  }
}
