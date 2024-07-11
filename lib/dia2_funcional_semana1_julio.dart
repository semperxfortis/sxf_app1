import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'auth_service.dart';

class Dia2FuncionalSemana1Julio extends StatelessWidget {
  final List<Map<String, dynamic>> sections = [
    {
      'title': 'ACTIVACIÓN',
      'subtitles': [
        {
          'subtitle': 'DEAD BUG (MISMO LADO) 1x20 ',
          'description': '''
-Tumbados boca arriba con piernas a 90/90 y brazos hacia el techo extendemos mismo brazo y pierna
-Intentamos no mover nada, excepto la pierna y brazo que extienden
          ''',
          'youtubeUrl': 'https://youtu.be/CNNlxI-DIM4',
          'imageAsset': 'assets/images/DeadBug(mismoLado).jpg'
        },
        {
          'subtitle': 'PUENTE UNILATERAL 1x10-10 ',
          'description': '''
-Mismo trabajo que en un puente pero de forma unilateral.
-Mantenemos la pierna que no toca el suelo en flexión de rodilla a 90 grados
          ''',
          'youtubeUrl': 'https://youtu.be/amqhnMu75Ko',
          'imageAsset': 'assets/images/PuenteUnilateral.jpg'
        },
        {
          'subtitle': '''
90/90 1x16
(Incluye regresión y progresión)
          ''',
          'description': '''
-Sentados en el suelo con caderas y rodillas en ángulo de 90/90 trabajamos la rotación de cadera de un lado a otro sin perder la posición.

Regresión
-Trabajamos el movimiento de forma unilateral

Progresión
-Mismo movimiento inicial pero eliminamos el apoyo de manos

          ''',
          'youtubeUrl': 'https://youtu.be/Hk6-TEyOdXc',
          'imageAsset': 'assets/images/90_90.jpg'
        },
        {
          'subtitle': '''
ROTACIÓN DE TRONCO CUADRUPEDIA 1x8-8 
        ''',
          'description': '''
-Desde cuadrupedia buscamos la máxima rotación de tronco cruzando el brazo por el interior y elevándolo hacia el techo.
''',
          'youtubeUrl': 'https://youtu.be/N3oFV9F7vUw',
          'imageAsset': 'assets/images/RotacionesTroncoCuadrupedia.jpg'
        },
        {
          'subtitle': '''
PLANCHA ELEVACIÓN CADERA 1x12 
        ''',
          'description': '''
-Desde plancha de manos realizamos una flexión de cadera manteniendo las piernas estiradas.
-El movimiento parte de un empuje de los hombros contra el suelo.
''',
          'youtubeUrl': 'https://youtu.be/o3Cvde8LSU4',
          'imageAsset': 'assets/images/PlanchaElevacionCadera.jpg'
        },
      ],
    },
    {
      'title': 'BLOQUE 1 FUERZA',
      'subtitles': [
        {
          'subtitle': '''
PUENTE CURL FEMORAL 4x8         
          ''',
          'description': '''
-Elevamos punteras del suelo y hacemos fuerza desde los talones contra el suelo para llevar nuestra cadera a extensión.
-Manteniendo el puente arriba, avanzamos con los talones hasta buscar una extensión de rodilla y volvemos a la posición inicial sin bajar del puente.
''',
          'youtubeUrl': 'https://youtu.be/BdXoWi1LC_Y',
          'imageAsset': 'assets/images/PuenteCurlFemoral.jpg'
        },
        {
          'subtitle': '''
FLEXIONES HOMBRO 4x8
          ''',
          'description': '''
-Desde posición de beast con rodillas extendidas buscamos bajar en bloque lo más cerca del suelo.
Progresión I
-Mismo movimiento pero con los pies elevados en un apoyo
Progresión II
-Desde posición de pino con los pies apoyados en la pared realizamos la flexión 
          ''',
          'youtubeUrl': 'https://youtu.be/pkCw-ly6Vqo',
          'imageAsset': 'assets/images/FlexionesHombro.jpg'
        },
        {
          'subtitle': '''
CRAB EXTENSION 4x8
          ''',
          'description': '''
-Desde posición de crab buscamos una extensión máxima de la cadera.
-Importante mantener los hombros lejos de las orejas y un buen empuje contra el suelo.
          ''',
          'youtubeUrl': 'https://youtu.be/3x5jPhfIeBE',
          'imageAsset': 'assets/images/CrabExtension.jpg'
        },
      ],
    },
    {
      'title': 'BLOQUE 2 FUERZA',
      'subtitles': [
        {
          'subtitle': '''
ZANCADAS 4x8-8
(Incluye regresión y progresión)  
''',
          'description': '''
-Partiendo con los pies alineados damos un paso atrás 
-Intentamos llevar la rodilla lo más cerca posible del suelo sin perder la verticalidad y la alineación de rodilla y pie.

Regresión
-Nos colocamos en la posición inicial de zancadas.
-Sin mover los pies buscamos bajar la rodilla lo más cerca del suelo.

Progresión
-Añadimos salto al movimiento de zancada para dificultar el ejercicio.
          ''',
          'youtubeUrl': 'https://youtu.be/szqP_ZDc9kk',
          'imageAsset': 'assets/images/Zancadas.jpg'
        },
        {
          'subtitle': '''
JALÓN GOMA 4x12-15
          ''',
          'description': '''
-Buscamos llevar los codos a las costillas mientras intentamos estirar la goma lo máximo posible.
-Si no disponemos de goma, podemos usar una toalla.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=1ko9xzhqSrE',
          'imageAsset': 'assets/images/Jalon.jpg'
        },
        {
          'subtitle': '''
PLANCHA LATERAL 4x20’’-20''
(Incluye regresión)
          ''',
          'description': '''
-Tumbados en posición lateral colocamos el codo debajo del hombro y elevamos la cadera manteniendo la posición.

Regresión
-Realizamos el movimiento desde las rodillas para facilitar el ejercicio.
          ''',
          'youtubeUrl': 'https://youtu.be/zDnRxpol7Mc',
          'imageAsset': 'assets/images/PlanchaLateral.jpg'
        },
      ],
    },
    {
      'title': 'HIIT (10`)',
      'subtitles': [
        {
          'subtitle': 'SKIPPING x40 ',
          'description': '''
-Simulamos el gesto de carrera buscando elevar la rodilla lo máximo posible sin movernos del sitio.          ''',
          'youtubeUrl': 'https://youtu.be/nFi43MguvsQ',
          'imageAsset': 'assets/images/Skipping.jpg'
        },
        {
          'subtitle': 'BEAST 2 APOYOS x20',
          'description': '''
-Desde beast elevamos mano y pierna contraria manteniendo la mayor estabilidad posible.          ''',
          'youtubeUrl': 'https://youtu.be/059lK7xcEHI',
          'imageAsset': 'assets/images/Beast2apoyos.jpg'
        },
        {
          'subtitle': '''CRAB LATERAL x10 ''',
          'description': '''
-Desde posición de crab cruzamos la pierna de forma lateral a la vez que elevamos brazo contrario buscando la máxima extensión.
          ''',
          'youtubeUrl': 'https://youtu.be/ryM_qLSN8vg',
          'imageAsset': 'assets/images/CrabLateral.jpg'
        },
      ],
    },
  ];

  Widget _buildSubtitle(Map<String, dynamic> item) {
    return ExpansionTile(
      title: Text(
        item['subtitle'],
        style: TextStyle(
            fontSize: 18 * 0.8, // Reducido en 20%
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0 * 0.8), // Reducido en 20%
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: () async {
                  final url = item['youtubeUrl'];
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'No se pudo abrir $url';
                  }
                },
                child: Image.asset(
                  item['imageAsset'],
                  height: 200 * 0.8, // Reducido en 20%
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10 * 0.8), // Reducido en 20%
              Text(
                item['description'],
                style: TextStyle(color: Colors.white, fontSize: 14 * 0.8), // Reducido en 20%
              ),
              SizedBox(height: 20 * 0.8), // Reducido en 20%
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSection(Map<String, dynamic> section) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          section['title'],
          style: TextStyle(
            fontSize: 24 * 0.8, // Reducido en 20%
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10 * 0.8), // Reducido en 20%
        ...section['subtitles']
            .map<Widget>((item) => _buildSubtitle(item))
            .toList(),
        SizedBox(height: 20 * 0.8), // Reducido en 20%
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Día 2 Semana 1 Julio', style: TextStyle(fontSize: 20 * 0.8)), // Reducido en 20%
        actions: [
          IconButton(
            icon: Icon(Icons.logout, size: 24 * 0.8), // Reducido en 20%
            onPressed: () {
              Provider.of<AuthService>(context, listen: false).logout();
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0 * 0.8), // Reducido en 20%
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: sections.map(_buildSection).toList(),
          ),
        ),
      ),
    );
  }
}