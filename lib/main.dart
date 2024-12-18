import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("This is the app bar! Yeah!")),
          body: DummyWidget())));
}

class DummyWidget extends StatelessWidget {
  const DummyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
          "This is a stateless widget with a build method. So hot-reload should work!"),
    );
  }
}
