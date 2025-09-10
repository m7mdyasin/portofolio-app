import 'package:flutter/material.dart';

class BioInformation extends StatelessWidget {
  const BioInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Text(
          "Mohamed Aly Yasin".split(" ").take(3).join(" "),
          style: TextStyle(
            color: Colors.amber,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '@mohamedyasin.dev',
          style: TextStyle(color: Colors.white70, fontSize: 17),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(right: 24.0, left: 24.0),
          child: Text(
            'Computer Engineering Student | Flutter Developer | Graphic Designer',
            style: TextStyle(color: Colors.white70, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
