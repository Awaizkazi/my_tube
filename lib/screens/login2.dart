import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'home_page.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  var userName = '';
  var password = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        body: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              SizedBox(
                height: 280,
                child: Stack(
                  children: [
                    Positioned(
                      top: 30,
                      left: 80,
                      child: Image.asset(
                        'assets/login2.png',
                        width: 250,
                        height: 230,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Login Now',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Text(
                'Please enter the details below to continue.',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600),
              ),
              TextFormField(
                onChanged: (value) {
                  userName = value;
                },
                // obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Email',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Enter Email',
                ),
              ),
              TextFormField(
                onChanged: (value) {
                  password = value;
                },
                // obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  loginMethod(userName, password, context);
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future loginMethod(String value1, String value2, context) async {
    final response = await http.post(
      Uri.parse('http://103.69.242.42:8080/TestAPI/Auth.svc/authenticateUser'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
          {"api_key": "myttube123456", "user_id": value1, "password": value2}),
    );
    var jsondata = jsonDecode(response.body);
    print(response.body);

    var status = jsondata[0]["status"];
    print(status);

    if (status == "True") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      Fluttertoast.showToast(
          msg: "Invalid Credentials",
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
