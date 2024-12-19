import 'package:flutter/material.dart';

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
            Row(
              children: [
                Text('Strength: '),
                Text('3'),
                SizedBox(
                  width: 50,
                )
              ],
            ),
            Row(
              children: [
                Text('Sugars: '),
                Text('3'),
                SizedBox(
                  width: 50,
                )
              ],
            ),
          ],
        ));
  }
}
