import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'auth_service.dart';

class Dia3FuncionalSemana1Julio extends StatelessWidget {
  final List<Map<String, dynamic>> sections = [
    {
      'title': 'ACTIVACIÓN',
      'subtitles': [
        {
          'subtitle': 'BIRD DOG 1x20',
          'description': '''
-Desde cuadrupedia, estiramos brazo y pierna contraria, buscando mantener la columna neutra durante todo el movimiento.
          ''',
          'youtubeUrl':
              'https://www.youtube.com/watch?v=96CSAL8r-zk&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=28',
          'imageAsset': 'assets/images/BirdDog.jpg'
        },
        {
          'subtitle': 'FLEXIÓN LATERAL COLUMNA 1x16',
          'description': '''
-Desde cuadrupedia, buscamos la máxima flexión lateral de la columna, intentando llevar nuestro hombro hacia nuestra cadera.
          ''',
          'youtubeUrl':
              'https://www.youtube.com/watch?v=le6ZYJ9jkM0&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=31',
          'imageAsset': 'assets/images/FlexiónLateral.jpg'
        },
        {
          'subtitle': '''
RETRACCIÓN / PROTRACCIÓN 1x12
          ''',
          'description': '''
-Desde cuadrupedia intentamos juntar y separar las escápulas lo máximo posible sin flexionar los codos ni mover la columna.
          ''',
          'youtubeUrl':
              'https://www.youtube.com/watch?v=FfmJqU8AKGI&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=34',
          'imageAsset': 'assets/images/Retraccion_Protraccion.jpg'
        },
        {
          'subtitle': '''
ROTACIONES TRONCO 1x10
(Incluye regresión y progresión)  
        ''',
          'description': '''
-Desde posición semiarrodillada buscamos rotar el tronco lo máximo posible hacia el lado de la pierna adelantada.

Regresión
-Mismo trabajo en posición de cuadrupedia.

Progresión
-En posición de plancha apoyamos una pierna al lado de la mano y roto el tronco hacia el lado de la pierna apoyada.
          ''',
          'youtubeUrl': 'https://youtu.be/_rU_L7yeR88',
          'imageAsset': 'assets/images/RotacionesTronco1.jpg'
        },
        {
          'subtitle': 'FLEXORES / EXTENSORES TOBILLO 1x12',
          'description': '''
-De pie, cargamos todo nuestro peso sobre los dedos de los pies para elevar nuestro cuerpo. 
-Después cambiamos, cargando todo el peso sobre nuestros talones. 
          ''',
          'youtubeUrl':
              'https://www.youtube.com/watch?v=BZmgJpkleyo&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=37',
          'imageAsset': 'assets/images/Flexores_Extensores.jpg'
        },
      ],
    },
    {
      'title': 'BLOQUE 1 FUERZA',
      'subtitles': [
        {
          'subtitle': '''
SENTADILLA 4x8 
(Incluye regresión y progresión)        
          ''',
          'description': '''
-Intentamos bajar hasta llegar a una flexión de rodilla a 90º.
-Buscamos mantener el tronco lo más vertical posible.
-Importante alinear rodillas y pies, evitando que las rodillas se metan hacia dentro.

Regresión  - Sentadilla cajón
-Facilitamos el ejercicio colocando un apoyo en la parte más profunda del movimiento.

Progresión - Sentadilla salto
-Añadimos el salto para mayor intensidad y potencia.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=1sDsHwQtzno',
          'imageAsset': 'assets/images/Sentadilla.jpg'
        },
        {
          'subtitle': '''
PESO MUERTO UNILATERAL 4x8/8 
          ''',
          'description': '''
-Buscamos que el movimiento parta de la cadera y estiramos una pierna hacia atrás, alineándola con el tronco.
-La pierna que se queda apoyada puede flexionarse ligeramente durante el movimiento.
          ''',
          'youtubeUrl': 'https://youtu.be/EVP20uAZlbE',
          'imageAsset': 'assets/images/PesoMuertoUnilateral.jpg'
        },
        {
          'subtitle': '''
SENTADILLA ISOMÉTRICA 4x20’’-30’’
          ''',
          'description': '''
-Nos colocamos en una pared con las rodillas flexionadas a 90º.
-Mantenemos  durante un tiempo bajo tensión el cuádriceps. 
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=0QFSxCwjxnw',
          'imageAsset': 'assets/images/SentadillaIsometrica.jpg'
        },
      ],
    },
    {
      'title': 'BLOQUE 2 FUERZA',
      'subtitles': [
        {
          'subtitle': 'APERTURAS BAJAS GOMA  4x15',
          'description': '''
- Realizamos una retracción escapular manteniendo una pequeña flexión de codos a la altura de nuestro abdomen.
-Si no disponemos de goma, podemos usar una toalla.

          ''',
          'youtubeUrl': 'https://youtu.be/CyKbrr1lD-g ',
          'imageAsset': 'assets/images/AperturasBajasGoma.jpg'
        },
        {
          'subtitle': '''
LIZZARD 4x10 
(Incluye regresión y progresión) 
          ''',
          'description': '''
-Desde plancha, realizamos una flexión a la vez que llevamos una rodilla por encima del codo.
-Volvemos a posición de plancha y cambiamos de pierna.
Regresión
-Facilitamos el movimiento al no realizar la flexión.
Progresión 
-Mantenemos una flexión isométrica lo más cerca posible del suelo.
-Pasamos la mayor parte del peso a la mano contraria de la pierna que vamos a mover, buscando llevar el pie de esa pierna lo más adelante posible, tocando el suelo con él.
          ''',
          'youtubeUrl':
              'https://www.youtube.com/watch?v=A8Rqjd5B7u0&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=58',
          'imageAsset': 'assets/images/Lizzard.jpg'
        },
        {
          'subtitle': 'HOLLOW 4x20’’',
          'description': '''
-Tumbados boca arriba, realizamos una elevación de brazos y piernas llevando nuestro tronco a una ligera flexión y mantenemos la posición. 
-Buscamos un alargamiento desde los pies a la cabeza.
          ''',
          'youtubeUrl':
              'https://www.youtube.com/watch?v=pFptjdXb_RE&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=68',
          'imageAsset': 'assets/images/Hollow.jpg'
        },
      ],
    },
    {
      'title': 'HIIT (10`)',
      'subtitles': [
        {
          'subtitle': 'FKT x10',
          'description': '''
-Desde beast, llevamos cadera atrás para después llevar una pierna al lado de nuestra mano, a la vez que elevamos esa mano y estiramos la pierna que queda atrás hacia delante entre el hueco que hay entre nuestra mano y pie.
          ''',
          'youtubeUrl':
              'https://www.youtube.com/watch?v=UCXy1B20ehw&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=55',
          'imageAsset': 'assets/images/FrontKickThrough.jpg'
        },
        {
          'subtitle': 'BURPEES x10',
          'description': '''
-Los realizamos sin flexión.
          ''',
          'youtubeUrl':
              'https://www.youtube.com/watch?v=y5xBUVFO-oM&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=60',
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
        title: Text('Día 3 Semana 1 Julio', style: TextStyle(fontSize: 20 * 0.8)), // Reducido en 20%
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