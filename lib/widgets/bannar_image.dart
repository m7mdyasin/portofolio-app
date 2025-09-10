import 'package:flutter/material.dart';

class BannarImage extends StatelessWidget {
  const BannarImage({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        child: Image.asset(
          'lib/assets/images/IMG_1002.jpg',
          fit: BoxFit.cover,
          height: size.height * 0.4,
          width: size.width * 0.92,
        ),
      ),
    );
  }
}
