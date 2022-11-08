import 'package:flutter/material.dart';

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
        
      ],
    );
  }
}