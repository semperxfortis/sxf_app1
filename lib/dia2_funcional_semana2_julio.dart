import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'auth_service.dart';

class Dia2FuncionalSemana2Julio extends StatelessWidget {
  final List<Map<String, dynamic>> sections = [
    {
      'title': 'ACTIVACIÓN',
      'subtitles': [
        {
          'subtitle': 'FLEXIÓN - EXTENSIÓN + ADD  1x8-8',
          'description': '''
-Desde cuadrupedia, estiramos una pierna lateralmente a la altura de la otra rodilla y buscamos la máxima flexión de la cadera sin perder la posición neutra de la columna.  
-Le añadimos trabajo al aductor de la pierna estirada
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=szuzlRBTNnk&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=30',
          'imageAsset': 'assets/images/Cuadrupedia+ADD.jpg'
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
EXTENSIÓN+FLEXIÓN COLUMNA 1x12
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
          'subtitle': '''
ESTABILIDAD MULTIPLANAR 1x10''',
          'description': '''
-Desde posición de beast, rotamos el tronco manteniendo la flexión de rodilla a 90, apoyamos el glúteo en el suelo y cambiamos de lado.
-Importante que todo el movimiento sea lento y controlado desde el hombro
''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=9ue_XMKz2m8&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=33',
          'imageAsset': 'assets/images/Estabilidad(Multiplanar).jpg'
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
SENTADILLA ISOMÉTRICA 4x30’’''',
          'description': '''
-Nos colocamos en una pared con las rodillas flexionadas a 90º.
-Aguantamos la posición
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=0QFSxCwjxnw',
          'imageAsset': 'assets/images/SentadillaIsometrica.jpg'
        },
        {
          'subtitle': '''
BEAST EXTENSION 4x12
(Incluye progresión)''',
          'description': '''
-Desde posición de beast buscamos una máxima extension de rodillas, elevando nuestra cadera hacia el techo
Progresión - Beast extensión salto
Desde posición de beast buscamos una máxima extension de rodillas a la vez que realizamos un salto con nuestros pies a la vez.
          ''',
          'youtubeUrl': 'https://youtu.be/wdkcYv2LEjY',
          'imageAsset': 'assets/images/BeastExtension.jpg'
        },
        {
          'subtitle': '''
PLANCHA INVERTIDA 4x8''',
          'description': '''
-Nos colocamos sentados con las piernas estiradas, apoyamos las manos cerca de nuestro cuerpo y elevamos nuestra cadera empujando con las manos y talones el suelo.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=A23RRAHd3KE&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=66',
          'imageAsset': 'assets/images/PlanchaInvertida.jpg'
        },
      ],
    },
    {
      'title': 'BLOQUE 2 FUERZA',
      'subtitles': [
        {
          'subtitle': 'PUENTE CAJÓN/ PARED UNILATERAL 4x10-10',
          'description': '''
-Con un pie apoyado en alto, subimos a un puente a la vez que la pierna que no apoya se mantiene flexionada a 90º.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=rLMPMe39J_A&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=42',
          'imageAsset': 'assets/images/PuenteCajón-paredUnilateral.jpg'
        },
        {
          'subtitle': '''
FLEXIONES 4x10
(Incluye regresión y progresión) 
          ''',
          'description': '''
-Desde posición de plancha buscamos bajar en bloque lo más cerca del suelo.
-Intentamos no abrir los codos

Regresión I - flexión con rodillas
-Realizamos las flexiones desde plancha de rodillas para facilitar el ejercicio.

Regresión II - flexión en alto (cajón)
-Misma posición que la flexión pero con las manos apoyadas en alto para ayudar a la realización del ejercicio.

Progresión - flexión arquero
-Colocamos las manos más abiertas que en las flexiones.
-Buscamos un trabajo unilateral cargando más peso del cuerpo hacia cada brazo.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=RLuy7ZWTTsY&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=7',
          'imageAsset': 'assets/images/Flexiones.jpg'
        },
        {
          'subtitle': 'PLANCHA LATERAL ROTACIÓN 4x8-8',
          'description': '''
-En posición de plancha lateral, buscamos una rotación de nuestro tronco cruzando el brazo por debajo y elevándolo hacia el techo.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=bssuXqGgsqE&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=67',
          'imageAsset': 'assets/images/PlanchaLateralRotación.jpg'
        },
      ],
    },
    {
      'title': 'HIIT (10`)',
      'subtitles': [
        {
          'subtitle': 'BEAST REACH x8',
          'description': '''
-Partimos de posición de beast, llevamos el glúteo a nuestros talones y buscamos pasar el peso de nuestro cuerpo hacia nuestras manos, elevando un pie con la rodilla los mas elevada y pegada al pecho posible.
-Volvemos atrás sin perder posición y cambiamos de pierna.


          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=NMTQkIw0kG4&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=57',
          'imageAsset': 'assets/images/BeastReach.jpg'
        },
        {
          'subtitle': 'SKATE JUMPS x20',
          'description': '''
-Realizamos saltos laterales a una pierna, cruzando por atrás ligeramente la otra pierna para ayudarnos con el impulso y equilibrio.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=nc-MlAqXp4I&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=62',
          'imageAsset': 'assets/images/SkateJumps.jpg'
        },
        {
          'subtitle': '''
BURPEES x6
          ''',
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
        title: Text('Día 2 Semana 2 Julio', style: TextStyle(fontSize: 20 * 0.8)), // Reducido en 20%
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