import 'package:first_flutter_project/common/my_card.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card View'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        elevation: 0,
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            MyCard(
              text: "Card 1",
            ),
            MyCard(
              text: "Card 2",
              color: Colors.amber,
            ),
            MyCard(
              text: "Card 3",
              color: Colors.green,
            ),
            MyCard(
              text: "Card 4",
            ),
            MyCard(
              text: "Card 5",
              color: Colors.pink,
            ),
          ],
        ),
      )),
    );
  }
}
