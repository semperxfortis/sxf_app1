import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'auth_service.dart';

class Dia1FuncionalSemana2Julio extends StatelessWidget {
  final List<Map<String, dynamic>> sections = [
    {
      'title': 'ACTIVACIÓN',
      'subtitles': [
        {
          'subtitle': 'DEAD BUG MISMO LADO 1x20',
          'description': '''
-Tumbados boca arriba con piernas a 90/90 y brazos hacia el techo, extendemos mismo brazo y pierna.
-Intentamos no mover nada excepto la pierna y el brazo que extienden.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=CNNlxI-DIM4&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=16',
          'imageAsset': 'assets/images/DeadBug(mismoLado).jpg'
        },
        {
          'subtitle': 'PUENTE 1x12',
          'description': '''
-Flexionamos rodillas a 90º.
-Empujamos con los talones el suelo, elevando nuestra cadera hasta extender completamente. 
-Cuidado con pasarnos e hiperextender la zona lumbar.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=9MIlccYQ-Yg',
          'imageAsset': 'assets/images/Puente.jpg'
        },
        {
          'subtitle': '''
BIRD DOG 1x16''',
          'description': '''
-Desde cuadrupedia, estiramos brazo y pierna contraria, buscando mantener la columna neutra durante todo el movimiento.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=96CSAL8r-zk&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=29',
          'imageAsset': 'assets/images/BirdDog.jpg'
        },
        {
          'subtitle': '''
CAT - CAMEL 1x12''',
          'description': '''
-Desde cuadrupedia, buscamos, máxima flexión y extensión de nuestra columna.
-Partimos siempre desde la cadera y buscamos mover vertebra a vertebra.
''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=8doAFdktJEM&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=13',
          'imageAsset': 'assets/images/CatCamel.jpg'
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
PUENTE UNILATERAL POTENCIA 4x10-10''',
          'description': '''
-Con una pierna apoyada sobre el talón y la otra estirada, elevamos la cadera lo más potente posible, trayendo la rodilla de la pierna que no apoya hacia el pecho.
          ''',
          'youtubeUrl':'https://www.youtube.com/watch?v=NiAf6umORQI&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=43',
          'imageAsset': 'assets/images/PuenteUnilateralPotencia.jpg'
        },
        {
          'subtitle': '''
PRESS VERTICAL HK (KTB) 4x8-8''',
          'description': '''
Semiarrodillados con el peso en el brazo contrario a la pierna adelantada, buscamos llevar el peso lo más vertical posible.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=MFk_whq161s&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=46',
          'imageAsset': 'assets/images/PressVerticalHK.jpg'
        },
        {
          'subtitle': '''
CRAB LATERAL 4x12''',
          'description': '''
-Desde posición de crab cruzamos la pierna de forma lateral a la vez que elevamos brazo contrario buscando la máxima extensión.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=ryM_qLSN8vg&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=27',
          'imageAsset': 'assets/images/CrabLateral.jpg'
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
REMO KTB 4x10-10''',
          'description': '''
Flexionamos cadera manteniendo la columna neutra y llevamos el peso hacia nuestra cadera de forma unilateral. 
          ''',
          'youtubeUrl': 'https://youtu.be/kQcmPZ_TGwA',
          'imageAsset': 'assets/images/RemoKTB.jpg'
        },
        {
          'subtitle': '''
PLANCHA TRÍCEPS 4x8
(Incluye progresión)''',
          'description': '''
-Desde plancha de codos, realizamos una extensión y flexión de los codos de forma alterna para cambiar de posición sin mover el resto del cuerpo. 
Progresión - Plancha tríceps cambios de apoyo unilateral
-Realizamos el mismo movimiento con los dos brazos a la vez. 
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=xQ9KE0TlULM&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=64',
          'imageAsset': 'assets/images/PlanchaTríceps.jpg'
        },
      ],
    },
    {
      'title': 'HIIT (10`)',
      'subtitles': [
        {
          'subtitle': '''
SKT x16
(Incluye regresión y progresión)''',
          'description': '''
-Nos colocamos en cuadrupedia con rodillas elevadas.
-Rotamos el tronco estirando la pierna hacia el lado contrario a la vez que llevamos el codo atrás.

Regresión - sin patada
-Facilitamos el movimiento quitando el estiramiento de la pierna

Progresión - patada alta
-Dificultamos el ejercicio elevando la pierna estirada lo máximo posible 
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=8L1viJRpLJY&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=3',
          'imageAsset': 'assets/images/SKT.jpg'
        },
        {
          'subtitle': 'CRAB EXTENSION ALTERNO x16',
          'description': '''
-Desde posición de crab buscamos una extensión máxima de la cadera a la vez que elevamos una pierna de forma alterna
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=KQP6NWhTjbs&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=71',
          'imageAsset': 'assets/images/CrabExtensionAlterno.jpg'
        },
        {
          'subtitle': '''
SKIPPING x40''',
          'description': '''
-Simulamos el gesto de carrera buscando elevar la rodilla lo máximo posible sin movernos del sitio.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=nFi43MguvsQ&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=26',
          'imageAsset': 'assets/images/Skipping.jpg'
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
        title: Text('Día 1 Semana 2 Julio', style: TextStyle(fontSize: 20 * 0.8)), // Reducido en 20%
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