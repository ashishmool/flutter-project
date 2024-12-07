import 'package:flutter/material.dart';

class LoadImageView extends StatelessWidget {
  const LoadImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image View"),
      ),
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                Image.asset(
                  'assets/images/dog1.png',
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                Image.asset(
                  'assets/images/dog2.jpg',
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                Image.asset(
                  'assets/images/dog3.jpg',
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
