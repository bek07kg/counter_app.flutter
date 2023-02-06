import 'package:flutter/material.dart';
import 'package:flutter_tapshyrma_1/ekinchi_barak.dart';

class BirinchiBarak extends StatefulWidget {
  const BirinchiBarak({Key, key}) : super(key: key);

  @override
  _BirinchiBarakState createState() => _BirinchiBarakState();
}

class _BirinchiBarakState extends State<BirinchiBarak> {
  int _san = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                "Тапшырма 01",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white10,
              elevation: 0.0,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EkinchiBarak(
                            san: _san,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 28.0,
                        right: 28.0,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff46F3F3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Сан : ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('$_san'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: _kemituu,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff005EA6),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          height: 50,
                          width: 80,
                          child: const Center(
                            child: Icon(
                              Icons.remove,
                              size: 40.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      GestureDetector(
                        onTap: _koshuu,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff005EA6),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          height: 50,
                          width: 80,
                          child: const Center(
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _kemituu() {
    setState(() {
      _san--;
    });
  }

  void _koshuu() {
    setState(() {
      _san++;
    });
  }
}
