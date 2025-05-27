import 'package:flutter/material.dart';

class tugas7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckboxExample(),
    );
  }
}

class CheckboxExample extends StatefulWidget {
  @override
  _CheckboxExampleState createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false; // nilai awal checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contoh Checkbox')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            Text('Saya setuju'),
          ],
        ),
      ),
    );
  }
}
