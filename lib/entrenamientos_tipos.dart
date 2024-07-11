import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_service.dart';
import 'constants.dart';

class Tipos_Entrenamientos extends StatelessWidget {
  final List<Map<String, String>> tiposEntrenamientos = [
    {'title': 'Funcional', 'route': kRouteMesesFuncional, 'icon': 'weight'},
    {'title': 'Movilidad', 'route': kRouteComingSoon, 'icon': 'pilates'},
    {'title': 'Hiit', 'route': kRouteComingSoon, 'icon': 'hit'},
  ];

  IconData _getIcon(String iconKey) {
    switch (iconKey) {
      case 'weight':
        return Icons.fitness_center;  // Icono de pesa
      case 'pilates':
        return Icons.self_improvement; // Icono de pilates
      case 'hit':
        return Icons.sports_handball;  // Icono de hit
      default:
        return Icons.help;  // Icono predeterminado
    }
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tipos Entrenamientos',
          style: TextStyle(fontSize: 15.3), // 15% más pequeño que 18
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12.24), // 15% más pequeño que 14.4
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.3), // 15% más pequeño que 18
                child: Text(
                  '¿Qué tipo de Entrenamiento quieres hacer?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.48, // 15% más pequeño que 28.8
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: tiposEntrenamientos.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.24, // 15% más pequeño que 14.4
                  mainAxisSpacing: 12.24, // 15% más pequeño que 14.4
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        tiposEntrenamientos[index]['route']!,
                        arguments: {'title': tiposEntrenamientos[index]['title']},
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12.24), // 15% más pequeño que 14.4
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(7.65), // 15% más pequeño que 9
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _getIcon(tiposEntrenamientos[index]['icon']!),
                            size: 30.6, // 15% más pequeño que 36
                            color: Colors.white,
                          ),
                          SizedBox(height: 12.24), // 15% más pequeño que 14.4
                          Text(
                            tiposEntrenamientos[index]['title']!,
                            style: TextStyle(
                              fontSize: 18.36, // 15% más pequeño que 21.6
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
