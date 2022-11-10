import 'package:flutter/material.dart';
import 'package:my_tube/screens/home_page.dart';

import 'screens/login.dart';
import 'screens/login2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Login2(),
    );
  }
}
