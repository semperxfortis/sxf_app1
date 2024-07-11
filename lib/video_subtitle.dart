import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoSubtitle extends StatefulWidget {
  final String subtitle;
  final String description;
  final String videoId;

  VideoSubtitle({
    required this.subtitle,
    required this.description,
    required this.videoId,
  });

  @override
  _VideoSubtitleState createState() => _VideoSubtitleState();
}

class _VideoSubtitleState extends State<VideoSubtitle> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.subtitle,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber),
        ),
        const SizedBox(height: 5),
        Text(widget.description, style: const TextStyle(color: Colors.white)),
        const SizedBox(height: 10),
        YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.amber,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
