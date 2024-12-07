import 'package:flutter/material.dart';

class CrossAxisView extends StatelessWidget {
  const CrossAxisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Cross Axis Alignment"),
      ),
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 255, 245, 214),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Button 3')),
            ],
          ),
        ),
      ),
    );
  }
}
