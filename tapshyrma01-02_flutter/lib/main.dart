import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ekchy.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Тапшырма 01"),
        ),
        body: Counter(),
      ),
    ));

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Ekchy(san: count)));
          },
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 120.0, vertical: 12.0),
              child: Text(
                'сан : $count',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              label: Text(""),
              onPressed: () {
                setState(() {
                  count = count - 1;
                });
              },
              icon: Icon(Icons.remove),
            ),
            SizedBox(width: 20.0),
            ElevatedButton.icon(
              label: Text(""),
              onPressed: () {
                setState(() {
                  count = count + 1;
                });
              },
              icon: Icon(Icons.add),
            ),
          ],
        )
      ],
    );
  }
}
