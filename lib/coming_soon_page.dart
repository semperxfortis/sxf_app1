import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_service.dart';
import 'package:url_launcher/url_launcher.dart';

class ComingSoonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Próximamente',
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Espaciado
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              SizedBox(height: 24.3), // 10% más pequeño que 27
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0), // Bordes redondeados
                child: LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                  backgroundColor: Colors.grey,
                  minHeight: 10.0, // Altura de la barra de progreso
                ),
              ),
              SizedBox(height: 24.3), // 10% más pequeño que 27
              Text(
                '¡PRÓXIMAMENTE!',
                style: TextStyle(
                  fontSize: 40.0, // Texto más grande
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.96), // 10% más pequeño que 14.4
              Text(
                'Estamos trabajando en esta función',
                style: TextStyle(
                  fontSize: 16.2, // 10% más pequeño que 18
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
