import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocalVideoPlayer extends StatelessWidget {
  final String videoUrl;

  LocalVideoPlayer({required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _launchURL,
      child: Text('Ver Video'),
    );
  }

  void _launchURL() async {
    final Uri url = Uri.parse(videoUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $videoUrl';
    }
  }
}
