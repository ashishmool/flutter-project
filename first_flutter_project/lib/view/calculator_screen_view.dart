import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final calculatorItems = [
      {'title': 'Arithmetic', 'icon': Icons.calculate, 'route': '/arithmetic'},
      {'title': 'Simple Interest', 'icon': Icons.percent, 'route': '/simple_interest'},
      {'title': 'Area of Circle', 'icon': Icons.build_circle_outlined, 'route': '/area_circle'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator Options'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: calculatorItems.length,
            itemBuilder: (context, index) {
              final item = calculatorItems[index];
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, item['route'] as String);
                },
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        item['icon'] as IconData,
                        size: 48,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        item['title'] as String,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
