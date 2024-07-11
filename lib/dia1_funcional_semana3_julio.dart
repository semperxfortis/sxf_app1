import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'auth_service.dart';

class Dia1FuncionalSemana3Julio extends StatelessWidget {
  final List<Map<String, dynamic>> sections = [
    {
      'title': 'ACTIVACIÓN',
      'subtitles': [
        {
          'subtitle': 'DEAD BUG CONTRALATERAL 1x20',
          'description': '''
-Tumbados boca arriba con piernas a 90/90 y brazos hacia el techo.
-Extendemos brazo y pierna contraria.
-Intentamos no mover nada excepto la pierna y el brazo que extienden.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=zPjNxqIVXro&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=15',
          'imageAsset': 'assets/images/DeadBug(mismoLado).jpg'
        },
        {
          'subtitle': '''
90/90 1x16
(Incluye regresión y progresión)''',
          'description': '''
-Sentados en el suelo con caderas y rodillas en ángulo de 90/90 trabajamos la rotación de cadera de un lado a otro sin perder la posición.

Regresión
-Trabajamos el movimiento de forma unilateral

Progresión
-Mismo movimiento inicial pero eliminamos el apoyo de manos
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=Hk6-TEyOdXc&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=18',
          'imageAsset': 'assets/images/90-90.jpg'
        },
        {
          'subtitle': '''
FLEXIÓN - EXTENSIÓN CADERA 1x12
(Incluye progresión)''',
          'description': '''
-Desde cuadrupedia buscamos la máxima flexión de la cadera llevando nuestro glúteo hacia los talones sin perder la posición neutra de la columna.
-Volvemos a la extensión llevando nuestra cadera hacia delante.

Progresión
-Elevamos rodillas del suelo

          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=_C9CYvemYas&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=12',
          'imageAsset': 'assets/images/Flex-ExtCadera.jpg'
        },
        {
          'subtitle': '''
RETRACCIÓN-PROTRACCIÓN ESCÁPULA  1x12''',
          'description': '''
-Desde cuadrupedia intentamos juntar y separar las escapulas lo máximo posible sin flexionar los codos ni mover la columna.
''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=FfmJqU8AKGI&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=35',
          'imageAsset': 'assets/images/Retraccion_Protraccion.jpg'
        },
        {
          'subtitle': '''
ROTACIONES TRONCO  1x10
(Incluye regresión y progresión)''',
          'description': '''
-Desde posición semiarrodillada buscamos rotar el tronco lo máximo posible hacia el lado de la pierna adelantada.

Regresión
-Mismo trabajo en posición de cuadrupedia.

Progresión
-En posición de plancha apoyamos una pierna al lado de la mano y roto el tronco hacia el lado de la pierna apoyada.
''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=_rU_L7yeR88',
          'imageAsset': 'assets/images/RotacionesTronco1.jpg'
        },
      ],
    },
    {
      'title': 'BLOQUE 1 FUERZA',
      'subtitles': [
        {
          'subtitle': '''
SENTADILLA BÚLGARA 4x8-8
(Incluye regresión y progresión) ''',
          'description': '''
-Con una pierna apoyada sobre el talón y la otra estirada, elevamos la cadera lo más potente posible, trayendo la rodilla de la pierna que no apoya hacia el pecho.
          ''',
          'youtubeUrl':'https://www.youtube.com/watch?v=UeZml-4PG9M&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=49',
          'imageAsset': 'assets/images/SentadillaBúlgara.jpg'
        },
        {
          'subtitle': '''
APERTURAS BAJAS GOMA  4x15''',
          'description': '''
- Realizamos una retracción escapular manteniendo una pequeña flexión de codos a la altura de nuestro abdomen.
-Si no disponemos de goma, podemos usar una toalla.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=CyKbrr1lD-g',
          'imageAsset': 'assets/images/AperturasBajasGoma.jpg'
        },
        {
          'subtitle': '''
BEAST 2 APOYOS  4x12''',
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
          'subtitle': 'PESO MUERTO (PICA) 4x12',
          'description': '''
-Con una pica apoyada en cabeza, espalda y glúteo realizamos la bisagra de cadera, flexionando ligeramente las rodillas y llevando el glúteo hacia atrás.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=lHk6NdHrchU&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=39',
          'imageAsset': 'assets/images/PesoMuerto.jpg'
        },
        {
          'subtitle': '''
PRESS VERTICAL STAND (KTB) 4x8-8''',
          'description': '''
De pie con el codo pegado al cuerpo y el peso a la altura del hombro, lo elevamos por encima de nuestra cabeza, lo más vertical posible.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=wu4uGg_WeUM&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=45',
          'imageAsset': 'assets/images/PressVertical.jpg'
        },
        {
          'subtitle': '''
PLANCHA LATERAL 4x20’’-20’’
(Incluye regresión) ''',
          'description': '''
- Tumbados en posición lateral colocamos el codo debajo del hombro y elevamos la cadera manteniendo la posición.

Regresión
-Realizamos el movimiento desde las rodillas para facilitar el ejercicio.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=zDnRxpol7Mc&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=25',
          'imageAsset': 'assets/images/PlanchaLateral.jpg'
        },
      ],
    },
    {
      'title': 'HIIT (10`)',
      'subtitles': [
        {
          'subtitle': 'CRAB REACH x12',
          'description': '''
-Desde posición de crab buscamos una extensión máxima de la cadera
-Elevamos nuestro brazo intentando tocar la mano contraria.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=xVqvuxnxgJo&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=6',
          'imageAsset': 'assets/images/CrabReach.jpg'
        },
        {
          'subtitle': 'SKIPPING x40',
          'description': '''
-Simulamos el gesto de carrera buscando elevar la rodilla lo máximo posible sin movernos del sitio.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=nFi43MguvsQ&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=26',
          'imageAsset': 'assets/images/Skipping.jpg'
        },
        {
          'subtitle': '''
FK x12''',
          'description': '''
-Desde beast, llevamos cadera atrás para después llevar una pierna al lado de nuestra mano, a la vez que elevamos esa mano y estiramos la pierna que queda atrás hacia delante entre el hueco que hay entre nuestra mano y pie.

Progresión FKT salto
-Añadimos un salto tanto en la ida como en la vuelta.

          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=UOp-GpAh1AE&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=55',
          'imageAsset': 'assets/images/FrontKick.jpg'
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
        title: Text('Día 1 Semana 3 Julio', style: TextStyle(fontSize: 20 * 0.8)), // Reducido en 20%
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