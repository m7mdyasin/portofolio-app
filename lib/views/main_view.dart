import 'package:flutter/material.dart';
import 'package:portofolio_app/widgets/home_back_ground.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          HomeBackGround(),
          Center(
            child: Text(
              "Main View",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
