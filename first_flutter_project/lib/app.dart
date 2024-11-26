// import 'package:first_flutter_project/view/add_no_view.dart';
import 'package:first_flutter_project/view/arithmetic_view.dart';
import 'package:flutter/material.dart';

//Stateless
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArithmeticView(),
    );
  }
}
