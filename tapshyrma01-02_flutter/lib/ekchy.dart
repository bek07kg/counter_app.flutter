import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter/main.dart';

class Ekchy extends StatelessWidget {
  int san;
  Ekchy({Key? key, required this.san}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Tапшырма 02')),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 120.0, vertical: 12.0),
            child: Text(
              "сан : $san",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ),
      ),
    );
  }
}
