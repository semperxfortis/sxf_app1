import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class YouTubeVideoThumbnail extends StatelessWidget {
  final String videoId;
  final VoidCallback onTap;

  const YouTubeVideoThumbnail({required this.videoId, required this.onTap});

  String getThumbnail(String videoId) {
    return 'https://img.youtube.com/vi/$videoId/0.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CachedNetworkImage(
        imageUrl: getThumbnail(videoId),
        placeholder: (context, url) => Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
