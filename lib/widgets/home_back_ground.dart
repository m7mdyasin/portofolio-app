import 'package:flutter/material.dart';

class HomeBackGround extends StatelessWidget {
  const HomeBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF392D36), Color(0xFF0C1121), Color(0xFF0E0B26)],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
      ),
    );
  }
}
