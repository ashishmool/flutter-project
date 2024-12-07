import 'package:flutter/material.dart';

class ArithmeticFormView extends StatefulWidget {
  const ArithmeticFormView({super.key});

  @override
  ArithmeticFormViewState createState() => ArithmeticFormViewState();
}

class ArithmeticFormViewState extends State<ArithmeticFormView> {
  int _firstNumber = 0;
  int _secondNumber = 0;
  int _result = 0;

// Global Private Key for Form State
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: const Text('Arithmetic Operations'),
        centerTitle: true,
        backgroundColor: Colors.yellow[700],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  _firstNumber = int.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First Number',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'First Number is Empty!';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                onChanged: (value) {
                  _secondNumber = int.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second Number',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Second Number is Empty!';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Result : $_result',
                style: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        _result = _firstNumber + _secondNumber;
                      });
                    }
                  },
                  child: const Text('Addition'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  onPressed: () {
                    setState(() {
                      _result = _firstNumber - _secondNumber;
                    });
                  },
                  child: const Text('Subtraction'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                  ),
                  onPressed: () {
                    setState(() {
                      _result = _firstNumber * _secondNumber;
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
