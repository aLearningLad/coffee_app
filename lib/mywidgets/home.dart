import 'package:flutter/material.dart';
import 'package:ftest/mywidgets/coffee_prefs.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          title: Text(
            'The coffee app!',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                color: Colors.brown[200],
                padding: const EdgeInsets.all(20),
                child: const Text("How I like my coffee . . .")),
            Container(
                color: Colors.brown[100],
                padding: const EdgeInsets.all(20),
                child: const CoffeePrefs()),
          ],
        ));
  }
}
