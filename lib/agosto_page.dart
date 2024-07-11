// agosto_page.dart
import 'package:flutter/material.dart';

class AgostoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agosto'),
      ),
      body: Center(
        child: Text(
          'Contenido de la página de Agosto',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}