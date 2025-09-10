import 'package:flutter/material.dart';
import 'package:portofolio_app/widgets/bio_information.dart';
import 'package:portofolio_app/widgets/download_text_icon.dart';
import 'package:portofolio_app/widgets/social_swiper_bar.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          BioInformation(),
          SizedBox(height: 8),
          SocialSwiperBar(),
          DownloadTextIcon(),
        ],
      ),
    );
  }
}
