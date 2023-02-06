import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(CounterApplication());

class CounterApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter counter Application',
      home: CounterScreenState(),
    );
  }
}

class CounterScreenState extends StatefulWidget {
  @override
  CounterScreen createState() => CounterScreen();
}

class CounterScreen extends State<CounterScreenState> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Тапшырма 01'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: const Icon(Icons.remove),
                onPressed: _decrementCount,
              ),
              Text("${_count}"),
              ElevatedButton(
                child: const Icon(Icons.add),
                onPressed: _incrementCount,
              )
            ],
          ),
        ));
  }
}
