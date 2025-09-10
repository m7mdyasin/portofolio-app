import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  SocialButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.color,
  });

  void Function() onPressed;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        color: Colors.white,
      ),
    );
  }
}
