import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class YouTubeVideoPlayer extends StatelessWidget {
  final String videoId;

  const YouTubeVideoPlayer({required this.videoId});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: WebView(
        initialUrl: 'https://www.youtube.com/watch?v=wpD7IaYQuuU&t=24s',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
