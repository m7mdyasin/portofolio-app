import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DownloadTextIcon extends StatelessWidget {
  const DownloadTextIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton.icon(
          onPressed: () {
            // Handle resume download action
          },
          icon: Icon(
            FontAwesomeIcons.solidFilePdf,
            color: Colors.white,
            size: 20,
          ),
          label: Text(
            'Download Resume',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
