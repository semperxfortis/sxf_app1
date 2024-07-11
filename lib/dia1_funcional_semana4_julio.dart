import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'auth_service.dart';

class Dia1FuncionalSemana4Julio extends StatelessWidget {
  final List<Map<String, dynamic>> sections = [
    {
      'title': 'ACTIVACIÓN',
      'subtitles': [
        {
          'subtitle': 'DEAD BUG MISMO LADO 1x20',
          'description': '''
-Tumbados boca arriba con piernas a 90/90 y brazos hacia el techo extendemos  mismo brazo y pierna.
-Intentamos no mover nada excepto la pierna y brazo que extienden
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=CNNlxI-DIM4&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=16',
          'imageAsset': 'assets/images/DeadBug(mismoLado).jpg'
        },
        {
          'subtitle': '''
PUENTE 1x15
(Incluye progresión) ''',
          'description': '''
-Flexionamos rodillas a 90º.
-Empujamos con los talones el suelo, elevando nuestra cadera hasta extender completamente.
-Cuidado con pasarnos e hiperextender zona lumbar.

Progresión
-Mismo trabajo que en un puente pero de forma unilateral.
-Mantenemos la pierna que no toca el suelo en flexión de rodilla a 90 grados
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=THFoBUhgm7M&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=14',
          'imageAsset': 'assets/images/Puente.jpg'
        },
        {
          'subtitle': '''
90/90 1x16
(Incluye regresión y progresión) ''',
          'description': '''
-Sentados en el suelo con caderas y rodillas en ángulo de 90/90 trabajamos la rotación de cadera de un lado a otro sin perder la posición.

Regresión
-Trabajamos el movimiento de forma unilatera

Progresión
-Mismo movimiento inicial pero eliminamos el apoyo de manos

          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=Hk6-TEyOdXc&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=18',
          'imageAsset': 'assets/images/90-90.jpg'
        },
        {
          'subtitle': '''
BIRD DOG 1x16 ''',
          'description': '''
-Desde cuadrupedia, estiramos brazo y pierna contraria, buscando mantener la columna neutra durante todo el movimiento.
''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=96CSAL8r-zk&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=29',
          'imageAsset': 'assets/images/BirdDog.jpg'
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
PESO MUERTO UNILATERAL 4x10-10  ''',
          'description': '''
-Buscamos que el movimiento parta de la cadera y estiramos una pierna hacia atrás, alineándola con el tronco.
La pierna que se queda apoyada puede flexionarse ligeramente durante el movimiento.
          ''',
          'youtubeUrl':'https://www.youtube.com/watch?v=EVP20uAZlbE',
          'imageAsset': 'assets/images/PesoMuertoUnilateral.jpg'
        },
        {
          'subtitle': '''
FLEXIONES 4x10
(Incluye regresión I, II y progresión)''',
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
          'subtitle': '''
BEAST 2 APOYOS  4x16 ''',
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
SENTADILLA  4x8-12
(Incluye regresión y progresión)''',
          'description': '''
-Intentamos bajar hasta llegar a una flexión de rodilla a 90º.
-Buscamos mantener el tronco lo más vertical posible.
-Importante alinear rodillas y pies, evitando que las rodillas se metan hacia dentro.

Regresión - Sentadilla cajón
-Facilitamos el ejercicio colocando un apoyo en la parte más profunda del movimiento.
Progresión - Sentadilla salto
-Añadimos el salto para mayor intensidad y potencia.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=1sDsHwQtzno',
          'imageAsset': 'assets/images/Sentadilla.jpg'
        },
        {
          'subtitle': '''
JALÓN GOMA 4x15''',
          'description': '''
-Buscamos llevar los codos a las costillas mientras intentamos estirar la goma lo máximo posible.

*Si no disponemos de goma, podemos usar una toalla.


          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=1ko9xzhqSrE',
          'imageAsset': 'assets/images/JalónGoma.jpg'
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
          'subtitle': '''
SKT x12
(Incluye regresión y progresión) ''',
          'description': '''
-Nos colocamos en cuadrupedia con rodillas elevadas.
-Rotamos el tronco estirando la pierna hacia el lado contrario a la vez que llevamos el codo atrás.
Regresión - sin patada
-Facilitamos el movimiento quitando el estiramiento de la pierna
Progresión - patada alta
-Dificultamos el ejercicio elevando la pierna estirada lo máximo posible.

          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=8L1viJRpLJY&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=3',
          'imageAsset': 'assets/images/SKT.jpg'
        },
        {
          'subtitle': 'MOUNTAIN CLIMBERS x20',
          'description': '''
-Desde plancha llevamos las rodillas unilateralmente hacia los codos.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=E-9bRutrDEo&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=4',
          'imageAsset': 'assets/images/MountainClimbers.jpg'
        },
        {
          'subtitle': '''
JUMPING JACKS x20 
          ''',
          'description': '''
-Realizamos saltos laterales, separando y juntando brazos a la vez que las piernas.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=JKr13yPxQnM&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=5',
          'imageAsset': 'assets/images/JumpingJacks.jpg'
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
        title: Text('Día 1 Semana 4 Julio', style: TextStyle(fontSize: 20 * 0.8)), // Reducido en 20%
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