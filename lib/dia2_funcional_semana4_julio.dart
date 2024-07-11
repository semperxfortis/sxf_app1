import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'auth_service.dart';

class Dia2FuncionalSemana4Julio extends StatelessWidget {
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
          'subtitle': '''
PUENTE UNILATERAL 1x10-10
(Incluye progresión) ''',
          'description': '''
-Flexionamos rodillas a 90º.
-Empujamos con los talones el suelo, elevando nuestra cadera hasta extender completamente. 
-Cuidado con pasarnos e hiperextender la zona lumbar.

Progresión
-Mismo trabajo que en un puente pero de forma unilateral.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=amqhnMu75Ko&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=17',
          'imageAsset': 'assets/images/PuenteUnilateral.jpg'
        },
        {
          'subtitle': '''FLEXIÓN - EXTENSIÓN + ADD  1x10-10''',
          'description': '''
-Desde cuadrupedia, estiramos una pierna lateralmente a la altura de la otra rodilla y buscamos la máxima flexión de la cadera sin perder la posición neutra de la columna.  
-Le añadimos trabajo al aductor de la pierna estirada
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=szuzlRBTNnk&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=30',
          'imageAsset': 'assets/images/Cuadrupedia+ADD.jpg'
        },
        {
          'subtitle': '''
CAT - CAMEL  1x10''',
          'description': '''
-Desde cuadrupedia, buscamos, máxima flexión y extensión de nuestra columna.
-Partimos siempre desde la cadera buscando mover vertebra a vertebra.
''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=8doAFdktJEM&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=13',
          'imageAsset': 'assets/images/CatCamel.jpg'
        },
        {
          'subtitle': '''
DORSIFLEXIÓN DE TOBILLO  1x8-8 ''',
          'description': '''
-Desde posición semiarrodillada, buscamos pasar la rodilla por delante del pie sin elevar el talón del suelo.

''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=qX9bDhMbYlM&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=37',
          'imageAsset': 'assets/images/DorsiflexiónDeTobillo.jpg'
        },
      ],
    },
    {
      'title': 'BLOQUE 1 FUERZA',
      'subtitles': [
        {
          'subtitle': '''
ZANCADAS 4x12-12
(Incluye regresión y progresión) ''',
          'description': '''
Partiendo con los pies alineados damos un paso atrás 
Intentamos llevar la rodilla lo más cerca posible del suelo sin perder la verticalidad y la alineación de rodilla y pie.

Regresión
-Nos colocamos en la posición inicial de zancadas.
-Sin mover los pies buscamos bajar la rodilla lo más cerca del suelo.

Progresión
-Añadimos salto al movimiento de zancada para dificultar el ejercicio.
          ''',
          'youtubeUrl':'https://www.youtube.com/watch?v=szqP_ZDc9kk&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=23',
          'imageAsset': 'assets/images/Zancadas.jpg'
        },
        {
          'subtitle': '''
REMO KTB  4x12-12''',
          'description': '''
Flexionamos cadera manteniendo la columna neutra y llevamos el peso hacia nuestra cadera de forma unilateral.

          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=kQcmPZ_TGwA',
          'imageAsset': 'assets/images/RemoKTB.jpg'
        },
        {
          'subtitle': '''
HOLLOW 4x20’’-20’’  ''',
          'description': '''
-Tumbados boca arriba, realizamos una elevación de brazos y piernas llevando nuestro tronco a una ligera flexión y mantenemos la posición 
-Buscamos un alargamiento desde los pies a la cabeza.

          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=pFptjdXb_RE&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=69',
          'imageAsset': 'assets/images/Hollow.jpg'
        },
      ],
    },
    {
      'title': 'BLOQUE 2 FUERZA',
      'subtitles': [
        {
          'subtitle': 'PUENTE UNILATERAL POTENCIA  4x10-12',
          'description': '''
-Con una pierna apoyada sobre el talón y la otra estirada, elevamos la cadera lo más potente posible, trayendo la rodilla de la pierna que no apoya hacia el pecho.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=NiAf6umORQI&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=43',
          'imageAsset': 'assets/images/PuenteUnilateralPotencia.jpg'
        },
        {
          'subtitle': '''
FONDOS CAJÓN  4x10-12
(Incluye regresión y progresión) ''',
          'description': '''
Colocamos las manos en un apoyo en altura, piernas estiradas y buscamos bajar el glúteo lo más cerca posible del suelo sin flexionar las rodillas. 
Importante mantener los hombros alejados de las orejas. 

Regresión - Fondos rodillas flexionadas 
-Flexionamos rodillas y apoyamos pies para quitarle carga al ejercicio y facilitar el movimiento.

Progresión - Fondos pies en alto
-Colocamos pies en alto para dificultar el ejercicio.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=pFSBJNm2zSs&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=44',
          'imageAsset': 'assets/images/Fondos.jpg'
        },
      ],
    },
    {
      'title': 'HIIT (10`)',
      'subtitles': [
        {
          'subtitle': 'BEAST REACH  x10',
          'description': '''
-Partimos de posición de beast, llevamos el glúteo a nuestros talones y buscamos pasar el peso de nuestro cuerpo hacia nuestras manos, elevando un pie con la rodilla los mas elevada y pegada al pecho posible.
-Volvemos atrás sin perder posición y cambiamos de pierna.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=NMTQkIw0kG4&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=57',
          'imageAsset': 'assets/images/BeastReach.jpg'
        },
        {
          'subtitle': 'SKATE JUMPS  x16',
          'description': '''
-Realizamos saltos laterales a una pierna, cruzando por atrás ligeramente la otra pierna para ayudarnos con el impulso y equilibrio.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=nc-MlAqXp4I&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=62',
          'imageAsset': 'assets/images/SkateJumps.jpg'
        },
        {
          'subtitle': '''
BURPEES x8 ''',
          'description': '''
-Los realizamos sin flexión.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=y5xBUVFO-oM&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=61',
          'imageAsset': 'assets/images/Burpees.jpg'
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
        title: Text('Día 2 Semana 4 Julio', style: TextStyle(fontSize: 20 * 0.8)), // Reducido en 20%
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