import 'package:flutter/material.dart';
// import 'package:ftest/mywidgets/home.dart';

void main() {
  runApp(MaterialApp(
    home: Sandbox(),
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sandbox'),
          backgroundColor: Colors.grey,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
              color: Colors.red[400],
              child: const Text('one'),
            ),
            Container(
              height: 200,
              color: Colors.green[400],
              child: const Text('two'),
            ),
            Container(
              height: 300,
              color: Colors.blue[400],
              child: const Text('three'),
            ),
          ],
        ));
  }
}
