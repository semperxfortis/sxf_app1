import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

class VideoCacheManager {
  // Obtiene la URL del video desde la caché o lo descarga si no está en la caché
  Future<String> getVideoUrl(String videoId) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/$videoId.mp4';
    final file = File(filePath);

    if (await file.exists()) {
      return filePath;
    } else {
      final url = '$videoId.mp4';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        await file.writeAsBytes(response.bodyBytes);
        return filePath;
      } else {
        throw Exception('Failed to load video');
      }
    }
  }

  // Cachea el video
  Future<void> cacheVideo(String videoId) async {
    await getVideoUrl(videoId);
  }
}
