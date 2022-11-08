import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(),
        Row(
          children: [
            SizedBox(height: 110),
            Row(
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 18,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
