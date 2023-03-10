import 'package:flutter/material.dart';
import 'birinchi_barak.dart';

void main() {
  runApp(MeninTirkemem());
}

class MeninTirkemem extends StatelessWidget {
  const MeninTirkemem({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BirinchiBarak(),
    );
  }
}