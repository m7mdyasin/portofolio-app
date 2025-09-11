import 'package:flutter/material.dart';

class LinksListTile extends StatelessWidget {
  const LinksListTile({super.key});

  final List<Map<String, dynamic>> links = const [
    {
      'title': 'Google',
      'url': 'https://www.google.com',
      'icon': Icons.language,
      'color': Colors.blue,
    },
    {
      'title': 'GitHub',
      'url': 'https://github.com',
      'icon': Icons.code,
      'color': Colors.black,
    },
    {
      'title': 'LinkedIn',
      'url': 'https://linkedin.com',
      'icon': Icons.business,
      'color': Colors.blueAccent,
    },
    {
      'title': 'Wikipedia',
      'url': 'https://wikipedia.org',
      'icon': Icons.book,
      'color': Colors.green,
    },
    {
      'title': 'Flutter',
      'url': 'https://flutter.dev',
      'icon': Icons.flutter_dash,
      'color': Colors.cyan,
    },
    {
      'title': 'YouTube',
      'url': 'https://youtube.com',
      'icon': Icons.video_library,
      'color': Colors.red,
    },
    {
      'title': 'Facebook',
      'url': 'https://facebook.com',
      'icon': Icons.facebook,
      'color': Colors.indigo,
    },
    {
      'title': 'Twitter',
      'url': 'https://twitter.com',
      'icon': Icons.alternate_email,
      'color': Colors.lightBlue,
    },
    {
      'title': 'Instagram',
      'url': 'https://instagram.com',
      'icon': Icons.camera_alt,
      'color': Colors.purple,
    },
    {
      'title': 'Medium',
      'url': 'https://medium.com',
      'icon': Icons.article,
      'color': Colors.teal,
    },
    {
      'title': 'Stack Overflow',
      'url': 'https://stackoverflow.com',
      'icon': Icons.question_answer,
      'color': Colors.orange,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: links.length,
      itemBuilder: (context, index) {
        final link = links[index];
        return CostoumBox(
          title: link['title'],
          url: link['url'],
          icon: link['icon'],
          color: link['color'],
        );
      },
    );
  }
}

class CostoumBox extends StatelessWidget {
  final String title;
  final String url;
  final IconData icon;
  final Color color;

  const CostoumBox({
    super.key,
    required this.title,
    required this.url,
    required this.icon,
    required this.color,
  });

  void _launchURL(BuildContext context) async {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('فتح الرابط: $url')));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: color.withOpacity(0.1),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, color: Colors.white),
          ),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(url, style: TextStyle(color: color)),
          trailing: Icon(Icons.open_in_new, color: color),
          onTap: () => _launchURL(context),
        ),
      ),
    );
  }
}
