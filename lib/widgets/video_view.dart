import 'package:flutter/material.dart';

class VideoView extends StatelessWidget {
  const VideoView({super.key});

  final List<Map<String, String>> videos = const [
    {
      'title': 'Introduction Video',
      'type': 'MP4',
      'thumbnail': 'https://img.youtube.com/vi/ysz5S6PUM-U/0.jpg',
    },
    {
      'title': 'Portfolio Demo',
      'type': 'MOV',
      'thumbnail': 'https://img.youtube.com/vi/3fumBcKC6RE/0.jpg',
    },
    {
      'title': 'Certificate Showcase',
      'type': 'AVI',
      'thumbnail': 'https://img.youtube.com/vi/2Vv-BfVoq4g/0.jpg',
    },
    {
      'title': 'Creative Reel',
      'type': 'MP4',
      'thumbnail': 'https://img.youtube.com/vi/5qap5aO4i9A/0.jpg',
    },
    {
      'title': 'Design Story',
      'type': 'MP4',
      'thumbnail': 'https://img.youtube.com/vi/ScMzIvxBSi4/0.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final video = videos[index];
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.network(
                video['thumbnail'] ?? '',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(Icons.broken_image, size: 40),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: IconButton(
                icon: const Icon(Icons.download, color: Colors.white, size: 28),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('تحميل الفيديو: ${video['title']}')),
                  );
                },
                tooltip: 'تحميل',
                splashRadius: 24,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        video['title'] ?? '',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.play_circle_fill,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('تشغيل الفيديو: ${video['title']}'),
                          ),
                        );
                      },
                      tooltip: 'تشغيل',
                      splashRadius: 24,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
