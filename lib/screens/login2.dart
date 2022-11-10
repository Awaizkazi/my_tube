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
        child: Stack(
          children: [
            Positioned(
              height: 220,
              top: 30,
              left: 80,
              child: Image.asset(
                'assets/login2.png',
                width: 220,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
