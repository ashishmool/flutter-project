import 'package:flutter/material.dart';

class RichTextView extends StatelessWidget {
  const RichTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text Example'),
        backgroundColor: Colors.amber,
        centerTitle: true,
        elevation: 0,
      ),
      body: RichText(
          text: const TextSpan(
        text: 'H',
        style: TextStyle(
          color: Colors.black,
          fontSize: 80,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: 'ello',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
          TextSpan(
            text: ' Bold',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
          TextSpan(
            text: ' world',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      )),
    );
  }
}
