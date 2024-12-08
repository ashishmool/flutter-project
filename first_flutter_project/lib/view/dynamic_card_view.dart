import 'package:first_flutter_project/common/my_card.dart';
import 'package:first_flutter_project/common/snackbar.dart';
import 'package:flutter/material.dart';

class DynamicCardView extends StatelessWidget {
  const DynamicCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Card View'),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 1; i <= 5; i++)
                GestureDetector(
                  onTap: () {
                    showMySnackbar(context, 'Card $i clicked (Single Tap)');
                  },
                  onDoubleTap: () {
                    showMySnackbar(context, 'Card $i (Double Tap)',
                        color: Colors.black);
                  },
                  child: MyCard(
                    text: 'Card $i',
                    color: i % 2 == 0 ? Colors.blue : Colors.amber,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
