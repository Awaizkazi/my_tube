import 'package:flutter/material.dart';
import 'package:my_tube/screens/options_screens.dart';

class ContentScreen extends StatelessWidget {
  final String src;
  const ContentScreen({super.key, required this.src});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          src,
          fit: BoxFit.cover,
        ),
        OptionsScreen(),
      ],
    );
  }
}
