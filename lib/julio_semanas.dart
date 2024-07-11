import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth_service.dart';
import 'constants.dart';

class JulioSemanas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    final List<Map<String, dynamic>> opciones = [
      {
        'title': 'Semana 1',
        'route': kRouteJulioDiasSemana1,
      },
      {
        'title': 'Semana 2',
        'route': kRouteJulioDiasSemana2,
      },
      {
        'title': 'Semana 3',
        'route': kRouteJulioDiasSemana3,
      },
      {
        'title': 'Semana 4',
        'route': kRouteJulioDiasSemana4,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Semanas Julio',
          style: TextStyle(fontSize: 16), // 20% más pequeño que el original
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              authService.logout();
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16), // 20% más pequeño que 20
              child: Text(
                'Elige la semana',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.6, // 20% más pequeño que 32
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 12.8), // 20% más pequeño que 16
                itemCount: opciones.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        opciones[index]['route'],
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 6.4), // 20% más pequeño que 8
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(8), // 20% más pequeño que 10
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.8), // 20% más pequeño que 16
                          child: Text(
                            opciones[index]['title']!,
                            style: const TextStyle(
                              fontSize: 19.2, // 20% más pequeño que 24
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
