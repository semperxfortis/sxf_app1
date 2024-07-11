import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'auth_service.dart';

class Dia3FuncionalSemana3Julio extends StatelessWidget {
  final List<Map<String, dynamic>> sections = [
    {
      'title': 'ACTIVACIÓN',
      'subtitles': [
        {
          'subtitle': 'DEAD BUG (CONTRALATERAL) 1x20',
          'description': '''
-Tumbados boca arriba con piernas a 90/90 y brazos hacia el techo.
-Extendemos brazo y pierna contraria.
-Intentamos no mover nada excepto la pierna y el brazo que extienden.

          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=zPjNxqIVXro&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=15',
          'imageAsset': 'assets/images/DeadBug(contralateral).jpg'
        },
        {
          'subtitle': 'PUENTE UNILATERAL 1x8-8',
          'description': '''
- Mismo trabajo que en un puente pero de forma unilateral.
-Mantenemos la pierna que no toca el suelo en flexión de rodilla a 90 grados


          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=amqhnMu75Ko&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=17',
          'imageAsset': 'assets/images/PuenteUnilateral.jpg'
        },
        {
          'subtitle': '''MANGUITO ROTADOR RODILLAS 1x10-10''',
          'description': '''
-Con el codo flexionado a 90º, buscamos la máxima rotación del hombro sin mover ninguna otra parte del cuerpo en las distintas posiciones de trabajo.



          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=ndNlX_QEDdg&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=33',
          'imageAsset': 'assets/images/ManguitoRotadores.jpg'
        },
        {
          'subtitle': '''RETRACCIÓN-PROTRACCIÓN 1x12 ''',
          'description': '''
-Desde cuadrupedia intentamos juntar y separar las escapulas lo máximo posible sin flexionar los codos ni mover la columna.
''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=FfmJqU8AKGI&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=34',
          'imageAsset': 'assets/images/Retraccion_Protraccion.jpg'
        },
        {
          'subtitle': '''FLEXIÓN LATERAL COLUMNA  1x12''',
          'description': '''
-Desde cuadrupedia, buscamos la máxima flexión lateral de la columna, intentado llevar nuestro hombro hacia nuestra cadera.
''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=le6ZYJ9jkM0&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=32',
          'imageAsset': 'assets/images/FlexiónLateral.jpg'
        },
      ],
    },
    {
      'title': 'BLOQUE 1 FUERZA',
      'subtitles': [
        {
          'subtitle': '''
FLEXIONES HOMBRO 4x6-8
(Incluye progresión I y II) ''',
          'description': '''
-Buscamos una mayor inclinación que en las flexiones para darle mayor trabajo a los hombros.

Progresión I - Flexiones hombro en altura (cajón)
- Mismo movimiento pero con los pies elevados en un apoyo

Progresión II - Flexiones hombro pino 
-Desde posición de pino con los pies apoyados en la pared realizamos la flexión
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=pkCw-ly6Vqo&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=20',
          'imageAsset': 'assets/images/FlexionesHombro.jpg'
        },
        {
          'subtitle': '''
PESO MUERTO (PICA) 4x12''',
          'description': '''
-Con una pica apoyada en cabeza, espalda y glúteo realizamos la bisagra de cadera, flexionando ligeramente las rodillas y llevando el glúteo hacia atrás.


          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=lHk6NdHrchU&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=39',
          'imageAsset': 'assets/images/PesoMuerto.jpg'
        },
        {
          'subtitle': '''
BEAST 2 APOYOS 4x16 ''',
          'description': '''
-Desde beast elevamos mano y pierna contraria, manteniendo la mayor estabilidad posible.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=059lK7xcEHI&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=27',
          'imageAsset': 'assets/images/Beast2apoyos.jpg'
        },
      ],
    },
    {
      'title': 'BLOQUE 2 FUERZA',
      'subtitles': [
        {
          'subtitle': '''
ZANCADAS 4x8-8
(Incluye regresión y progresión)''',
          'description': '''
Partiendo con los pies alineados damos un paso atrás 
Intentamos llevar la rodilla lo más cerca posible del suelo sin perder la verticalidad y la alineación de rodilla y pie.

Regresión
-Nos colocamos en la posición inicial de zancadas.
-Sin mover los pies buscamos bajar la rodilla lo más cerca del suelo.

Progresión
-Añadimos salto al movimiento de zancada para dificultar el ejercicio. 
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=szqP_ZDc9kk',
          'imageAsset': 'assets/images/Zancadas.jpg'
        },
        {
          'subtitle': '''
REMO GOMA 4x10-10''',
          'description': '''
-Con una goma pisada y la cadera flexionada, llevamos nuestros codos hacia la cadera manteniendo la espalda neutra.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=D7ZdVOYyc0c&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=52',
          'imageAsset': 'assets/images/RemoGoma.jpg'
        },
        {
          'subtitle': 'CRAB REACH 4X8',
          'description': '''
-Desde posición de crab buscamos una extensión máxima de la cadera
-Elevamos nuestro brazo intentando tocar la mano contraria.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=xVqvuxnxgJo&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=6',
          'imageAsset': 'assets/images/CrabReach.jpg'
        },
      ],
    },
    {
      'title': 'HIIT (10`)',
      'subtitles': [
        {
          'subtitle': 'MOUNTAIN CLIMBERS DOBLES x10',
          'description': '''
-Desde plancha realizamos un pequeño salto hacia delante con los dos pies y volvemos a la posición de plancha con otro salto.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=OZtviVKrJXM&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=60',
          'imageAsset': 'assets/images/MountainClimbersDobles.jpg'
        },
        {
          'subtitle': 'JUMPING JACKS x20',
          'description': '''
-Realizamos saltos laterales, separando y juntando brazos a la vez que las piernas.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=JKr13yPxQnM&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=5',
          'imageAsset': 'assets/images/JumpingJacks.jpg'
        },
        {
          'subtitle': '''
PLANCHA TOQUES x20
          ''',
          'description': '''
-Desde una plancha de manos, vamos a tocar con una mano nuestro hombro contrario, buscando que la cadera no se mueva durante el ejercicio.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=IXTWt3zyVyI&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=2',
          'imageAsset': 'assets/images/PlanchaToques.jpg'
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
        title: Text('Día 3 Semana 3 Julio', style: TextStyle(fontSize: 20 * 0.8)), // Reducido en 20%
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