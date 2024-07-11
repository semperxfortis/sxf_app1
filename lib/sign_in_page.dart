import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'auth_service.dart';
import 'constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;
  String _errorMessage = '';

  void _login() async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });

    final authService = Provider.of<AuthService>(context, listen: false);
    try {
      await authService.login(
        _emailController.text,
        _passwordController.text,
      );
      await _cacheImportantVideos(); // Pre-carga los videos importantes
      Navigator.pushReplacementNamed(context, kRouteEntrenamiento);
    } catch (e) {
      setState(() {
        _errorMessage = 'Invalid usuario o password';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _cacheImportantVideos() async {
    final importantVideoIds = [
      'hp4wXxE4fxg', // Lista de IDs de videos importantes
      // Agrega más IDs de videos si es necesario
    ];

    for (var videoId in importantVideoIds) {
      final controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: true,
        ),
      );

      // Simula una precarga
      await Future.delayed(Duration(seconds: 2)); // Espera 2 segundos para simular la precarga
      controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: TextStyle(fontSize: 16.2), // 10% más pequeño que 18
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12.96), // 10% más pequeño que 14.4
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 16.2), // 10% más pequeño que 18
              GestureDetector(
                onTap: () async {
                  const url = 'https://semperxfortis.com/';
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'No se pudo abrir $url';
                  }
                },
                child: Image.asset(
                  'assets/images/LogoSF.png',
                  width: 297, // 10% más pequeño que 330
                  height: 297, // 10% más pequeño que 330
                  fit: BoxFit.contain,
                ),
              ),
              Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'User',
                      labelStyle: TextStyle(color: Colors.amber, fontSize: 12.96), // 10% más pequeño que 14.4
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                    ),
                    style: TextStyle(color: Colors.amber, fontSize: 12.96), // 10% más pequeño que 14.4
                  ),
                  SizedBox(height: 24.3), // 10% más pequeño que 27
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.amber, fontSize: 12.96), // 10% más pequeño que 14.4
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                    ),
                    obscureText: true,
                    style: TextStyle(color: Colors.amber, fontSize: 12.96), // 10% más pequeño que 14.4
                  ),
                  SizedBox(height: 16.2), // 10% más pequeño que 18
                  if (_errorMessage.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.2), // 10% más pequeño que 18.0
                      child: Text(
                        _errorMessage,
                        style: TextStyle(color: Colors.red, fontSize: 12.96), // 10% más pequeño que 14.4
                      ),
                    ),
                  if (_isLoading)
                    CircularProgressIndicator()
                  else
                    ElevatedButton(
                      onPressed: _login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        padding: EdgeInsets.symmetric(horizontal: 32.4, vertical: 16.2), // 10% más pequeño que 36 y 18
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.1), // 10% más pequeño que 9
                        ),
                      ),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 16.2, // 10% más pequeño que 18
                          color: Colors.black,
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 16.2), // 10% más pequeño que 18
            ],
          ),
        ),
      ),
    );
  }
}