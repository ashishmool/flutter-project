import 'package:flutter/material.dart';

class FlexibleExpanded extends StatelessWidget {
  const FlexibleExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible Expanded"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.red,
              alignment: Alignment.center,
              child: const Text('1',
                  style: TextStyle(fontSize: 50, color: Colors.black)),
            ),
          ),
          Expanded(
            flex: 2,
            // for Flexible use fit
            // fit: FlexFit.tight,
            // fit: FlexFit.loose,
            child: Container(
              width: double.infinity,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: const Text('2',
                  style: TextStyle(fontSize: 50, color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
