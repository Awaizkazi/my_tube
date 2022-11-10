import 'package:flutter/material.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
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
              Positioned(
                top: 290,
                left: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                  ],
                ),
              ),
              Positioned(
                top: 370,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
