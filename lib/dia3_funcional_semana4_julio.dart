import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'auth_service.dart';

class Dia3FuncionalSemana4Julio extends StatelessWidget {
  final List<Map<String, dynamic>> sections = [
    {
      'title': 'ACTIVACIÓN',
      'subtitles': [
        {
          'subtitle': '''
90/90 1x12
(Incluye regresión y progresión)''',
          'description': '''
-Sentados en el suelo con caderas y rodillas en ángulo de 90/90 trabajamos la rotación de cadera de un lado a otro sin perder la posición.
Regresión
-Trabajamos el movimiento de forma unilatera
Progresión
-Mismo movimiento inicial pero eliminamos el apoyo de manos
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=Hk6-TEyOdXc&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=18',
          'imageAsset': 'assets/images/90_90.jpg'
        },
        {
          'subtitle': '''
EXTENSIÓN + FLEXIÓN COLUMNA 1x8
(Incluye progresión)''',
          'description': '''
Desde plancha de rodillas, extendemos la columna llevando nuestra cadera hacia el suelo y volvemos a cuadrupedia encorvando al máximo la columna. 
Importante mantener activados los glúteos y hacer un buen empuje desde la mano al suelo.

Progresión - Extensión + flexión columna
-Elevamos rodillas del suelo.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=l8LZkISSqcY&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=31',
          'imageAsset': 'assets/images/ExtensionFlexion.jpg'
        },
        {
          'subtitle': '''RETRACCIÓN - PROTRACCIÓN  1x12 ''',
          'description': '''
-Desde cuadrupedia intentamos juntar y separar las escapulas lo máximo posible sin flexionar los codos ni mover la columna.

          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=FfmJqU8AKGI&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=35',
          'imageAsset': 'assets/images/Retraccion_Protraccion.jpg'
        },
        {
          'subtitle': '''
FLEXIÓN LATERAL COLUMNA 1x12 ''',
          'description': '''
-Desde cuadrupedia, buscamos la máxima flexión lateral de la columna, intentado llevar nuestro hombro hacia nuestra cadera.


''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=le6ZYJ9jkM0&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=32',
          'imageAsset': 'assets/images/FlexiónLateral.jpg'
        },
        {
          'subtitle': '''
FLEXORES - EXTENSORES TOBILLO 1x12''',
          'description': '''
-De pie, cargamos todo nuestro peso sobre los dedos de los pies para elevar nuestro cuerpo. 
-Después cambiamos, cargando todo el peso sobre nuestros talones. 

''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=BZmgJpkleyo&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=38',
          'imageAsset': 'assets/images/Flexores_Extensores.jpg'
        },
      ],
    },
    {
      'title': 'BLOQUE 1 FUERZA',
      'subtitles': [
        {
          'subtitle': '''
SENTADILLA 1 PIERNA 4x8-8 ''',
          'description': '''
-Realizamos una sentadilla una pierna, manteniendo la otra pierna estirada y ayudándonos de un apoyo atrás para facilitar el ejercicio.
          ''',
          'youtubeUrl':'https://www.youtube.com/watch?v=RmtA7OEIHTg&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=48',
          'imageAsset': 'assets/images/SentadillAaUnaPierna.jpg'
        },
        {
          'subtitle': '''
PUENTE CURL FEMORAL 4x8''',
          'description': '''
-Elevamos punteras del suelo y hacemos fuerza desde los talones contra el suelo para llevar nuestra cadera a extension.
-Manteniendo el puente arriba, avanzamos con los talones hasta buscar una extensión de rodilla y volvemos a la posición inicial sin bajar del puente.

          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=BdXoWi1LC_Y&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=20',
          'imageAsset': 'assets/images/PuenteCurlFemoral.jpg'
        },
        {
          'subtitle': '''
PLANCHA LATERAL ABD  4x8-8
(Incluye regresión) ''',
          'description': '''
- Tumbados en posición lateral colocamos el codo debajo del hombro y elevamos la cadera manteniendo la posición.

Regresión
-Realizamos el movimiento desde las rodillas para facilitar el ejercicio.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=CVsI_Hl94vY&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=68',
          'imageAsset': 'assets/images/PlanchaLateralAbd.jpg'
        },
      ],
    },
    {
      'title': 'BLOQUE 2 FUERZA',
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
          'youtubeUrl': 'https://www.youtube.com/watch?v=pkCw-ly6Vqo&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=21',
          'imageAsset': 'assets/images/FlexionesHombro.jpg'
        },
        {
          'subtitle': '''
APERTURAS BAJAS GOMA 4x12-15''',
          'description': '''
- Realizamos una retracción escapular manteniendo una pequeña flexión de codos a la altura de nuestro abdomen.
-Si no disponemos de goma, podemos usar una toalla.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=CyKbrr1lD-g',
          'imageAsset': 'assets/images/AperturasBajasGoma.jpg'
        },
        {
          'subtitle': 'PLANCHA ELEVACIÓN CADERA  4x8',
          'description': '''
-Desde plancha de manos realizamos una flexión de cadera manteniendo las piernas estiradas.
-El movimiento parte de un empuje de los hombros contra el suelo.


          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=o3Cvde8LSU4&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=19',
          'imageAsset': 'assets/images/PlanchaElevacionCadera.jpg'
        },
      ],
    },
    {
      'title': 'HIIT (10`)',
      'subtitles': [
        {
          'subtitle': 'CRAB LATERAL / x12',
          'description': '''

-Desde posición de crab cruzamos la pierna de forma lateral a la vez que elevamos brazo contrario buscando la máxima extensión.

          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=ryM_qLSN8vg&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=28',
          'imageAsset': 'assets/images/CrabLateral.jpg'
        },
        {
          'subtitle': '''
FKT x10
(Incluye progresión) ''',
          'description': '''
-Desde beast, llevamos cadera atrás para después llevar una pierna al lado de nuestra mano, a la vez que elevamos esa mano y estiramos la pierna que queda atrás hacia delante entre el hueco que hay entre nuestra mano y pie.
Progresión - FKT salto
-Añadimos un salto tanto en la ida como en la vuelta.

          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=UCXy1B20ehw&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=55',
          'imageAsset': 'assets/images/FrontKickThrough.jpg'
        },
        {
          'subtitle': '''
SKIPPING x40  
          ''',
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
        title: Text('Día 3 Semana 4 Julio', style: TextStyle(fontSize: 20 * 0.8)), // Reducido en 20%
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