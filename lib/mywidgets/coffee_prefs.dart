import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  @override
  Widget build(BuildContext context) {
    void handleIncreaseStrength() {
      setState(() {
        strength = strength < 5 ? strength + 1 : 0;
      });
    }

    void handleSugarIncrease() {
      setState(() {
        sugars = sugars < 5 ? sugars + 1 : 1;
      });
    }

    return Column(children: [
      Row(
        children: [
          Text("Strength: "),
          Text('$strength'),
          Image.asset(
            'assets/bean.png',
            width: 10,
            height: 10,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
          ),
          Expanded(child: SizedBox(width: 50)),
          FilledButton(
            onPressed: handleIncreaseStrength,
            style: FilledButton.styleFrom(
                backgroundColor: Colors.brown, foregroundColor: Colors.white),
            child: Text("+"),
          )
        ],
      ),
      Row(children: [
        Text("Sugars: "),
        Text("$sugars"),
        for (int i = 0; i < sugars; i++)
          Image.asset(
            'assets/sugar.png',
            width: 15,
            height: 15,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
          ),
        Expanded(
          child: SizedBox(width: 50),
        ), // sizedbox is like an empty div to create space between elements
        TextButton(
          onPressed: handleSugarIncrease,
          style: TextButton.styleFrom(
              backgroundColor: Colors.brown[300],
              foregroundColor: Colors.white),
          child: Text("+"),
        )
      ]),
    ]);
  }
}
