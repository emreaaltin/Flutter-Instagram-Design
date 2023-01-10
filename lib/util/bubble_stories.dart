import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  BubbleStories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
          SizedBox(
            height: 6,
          ),
          Text(text)
        ],
      ),
    );
  }
}
