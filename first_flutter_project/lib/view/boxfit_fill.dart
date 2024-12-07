import 'package:flutter/material.dart';

class BoxFillView extends StatelessWidget {
  const BoxFillView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Boxfit View"),
      ),
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .9,
          width: MediaQuery.of(context).size.width * .9,
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              // Image.asset(
              //   'assets/images/dog1.png',
              //   fit: BoxFit.fill,
              // ),
              // const SizedBox(height: 16),
              // Image.asset(
              //   'assets/images/dog2.jpg',
              //   fit: BoxFit.fill,
              // ),
              // const SizedBox(height: 16),
              Image.asset(
                'assets/images/dog3.jpg',
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
