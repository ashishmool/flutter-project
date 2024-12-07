import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            // color: Colors.amberAccent, Should be added in decoration
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amberAccent,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),
            child: const Text('I am a container'),
          ),
        ),
      ),
    );
  }
}
