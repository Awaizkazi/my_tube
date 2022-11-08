import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  radius: 18,
                ),
                Text('Flutter_developer'),
                Icon(Icons.verified, size: 15),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Follow',
                    style: TextStyle(color: Colors.white),
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
