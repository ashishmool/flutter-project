import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  int first = 0; // First number input
  int second = 0; // Second number input
  int result = 0; // Result of the operation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Operations'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // First Number Input
              TextField(
                onChanged: (value) {
                  setState(() {
                    first = int.tryParse(value) ?? 0;
                  });
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First Number',
                ),
              ),
              const SizedBox(height: 16),

              // Second Number Input
              TextField(
                onChanged: (value) {
                  setState(() {
                    second = int.tryParse(value) ?? 0;
                  });
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second Number',
                ),
              ),
              const SizedBox(height: 16),

              // Result Display
              Text(
                'Result: $result',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),

              // Addition Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first + second;
                    });
                  },
                  child: const Text('Addition'),
                ),
              ),
              const SizedBox(height: 16),

              // Subtraction Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first - second;
                    });
                  },
                  child: const Text('Subtraction'),
                ),
              ),
              const SizedBox(height: 16),

              // Multiplication Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first * second;
                    });
                  },
                  child: const Text('Multiplication'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
