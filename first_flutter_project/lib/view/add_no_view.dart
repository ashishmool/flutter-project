import 'package:flutter/material.dart';

class AddNoView extends StatelessWidget {
  const AddNoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First App'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Text('Hello'),
    );
  }
}
