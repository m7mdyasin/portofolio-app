import 'package:flutter/material.dart';
import 'package:portofolio_app/views/main_view.dart';
import 'package:portofolio_app/views/splash_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashScreen());
  }
}
