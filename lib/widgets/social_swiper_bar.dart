import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portofolio_app/widgets/social_button.dart';

class SocialSwiperBar extends StatelessWidget {
  const SocialSwiperBar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SocialButton> socialButtons = [
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
      SocialButton(
        onPressed: () {},
        icon: FontAwesomeIcons.github,
        color: Colors.white,
      ),
    ];

    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Folow Me On',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.add, color: Colors.white, size: 20),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: 80,
            width: double.infinity,
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.3, // يتحكم في عدد الأيقونات اللي تبان
              ),
              items: socialButtons.map((btn) {
                return Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: Icon(btn.icon, size: 40, color: btn.color),
                      onPressed: btn.onPressed,
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
