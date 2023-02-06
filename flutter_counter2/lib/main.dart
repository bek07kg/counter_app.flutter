import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(CounterApplication());

class CounterApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter Application',
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Тапшырма 01"),
    );
  }
}
