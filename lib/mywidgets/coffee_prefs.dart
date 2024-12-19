import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Text("Strength: "),
          Text("3"),
          Image.asset(
            'assets/bean.png',
            width: 10,
            height: 10,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
          ),
          SizedBox(width: 50),
        ],
      ),
      Row(children: [
        Text("Sugars: "),
        Text("3"),
        SizedBox(
            width:
                50), // sizedbox is like an empty div to create space between elements
      ]),
    ]);
  }
}
