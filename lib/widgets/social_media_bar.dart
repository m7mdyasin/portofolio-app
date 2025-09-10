import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portofolio_app/widgets/social_button.dart';

class SocialMediaBar extends StatelessWidget {
  const SocialMediaBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialButton(
              onPressed: () {},
              icon: FontAwesomeIcons.facebook,
              color: const Color.fromARGB(255, 33, 116, 199),
            ),
            SocialButton(
              onPressed: () {},
              icon: FontAwesomeIcons.instagram,
              color: const Color.fromARGB(255, 209, 92, 229),
            ),
            SocialButton(
              onPressed: () {},
              icon: FontAwesomeIcons.whatsapp,
              color: const Color.fromARGB(255, 25, 231, 138),
            ),
            SocialButton(
              onPressed: () {},
              icon: FontAwesomeIcons.linkedin,
              color: const Color.fromARGB(255, 6, 90, 158),
            ),
          ],
        ),
      ),
    );
  }
}
