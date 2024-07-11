import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'auth_service.dart';

class Dia2FuncionalSemana3Julio extends StatelessWidget {
  final List<Map<String, dynamic>> sections = [
    {
      'title': 'ACTIVACIÓN',
      'subtitles': [
        {
          'subtitle': 'DEAD BUG MISMO LADO 1x20',
          'description': '''
-Tumbados boca arriba con piernas a 90/90 y brazos hacia el techo extendemos  mismo brazo y pierna.
-Intentamos no mover nada excepto la pierna y brazo que extienden.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=CNNlxI-DIM4&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=16',
          'imageAsset': 'assets/images/DeadBug(mismoLado).jpg'
        },
        {
          'subtitle': 'PUENTE (incluye progresión) 1x16',
          'description': '''
-Flexionamos rodillas a 90º.
-Empujamos con los talones el suelo, elevando nuestra cadera hasta extender completamente.
-Cuidado con pasarnos e hiperextender zona lumbar.

Progresión
- Mismo trabajo que en un puente pero de forma unilateral.
-Mantenemos la pierna que no toca el suelo en flexión de rodilla a 90 grados
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=9MIlccYQ-Yg',
          'imageAsset': 'assets/images/Puente.jpg'
        },
        {
          'subtitle': '''BIRD DOG 1x16 ''',
          'description': '''
-Desde cuadrupedia, estiramos brazo y pierna contraria, buscando mantener la columna neutra durante todo el movimiento.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=96CSAL8r-zk&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=29',
          'imageAsset': 'assets/images/BirdDog.jpg'
        },
        {
          'subtitle': '''
FLEXIÓN - EXTENSIÓN + ADD  1x10-10''',
          'description': '''
-Desde cuadrupedia, estiramos una pierna lateralmente a la altura de la otra rodilla y buscamos la máxima flexión de la cadera sin perder la posición neutra de la columna.  
-Le añadimos trabajo al aductor de la pierna estirada
''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=szuzlRBTNnk&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=30',
          'imageAsset': 'assets/images/Cuadrupedia+ADD.jpg'
        },
        {
          'subtitle': '''
DORSIFLEXIÓN TOBILLO  1x8-8''',
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
PESO MUERTO UNILATERAL  4x10-10''',
          'description': '''
-Buscamos que el movimiento parta de la cadera y estiramos una pierna hacia atrás, alineándola con el tronco.
-La pierna que se queda apoyada puede flexionarse ligeramente durante el movimiento.
          ''',
          'youtubeUrl': 'https://youtu.be/EVP20uAZlbE',
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
SKT 4x12
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
      ],
    },
    {
      'title': 'BLOQUE 2 FUERZA',
      'subtitles': [
        {
          'subtitle': 'SENTADILLA ISOMÉTRICA 4x20’’-30’’ ',
          'description': '''
-Nos colocamos en una pared con las rodillas flexionadas a 90º.
-Aguantamos la posición
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=0QFSxCwjxnw',
          'imageAsset': 'assets/images/SentadillaIsometrica.jpg'
        },
        {
          'subtitle': '''
JALÓN KTB  4x10-10 ''',
          'description': '''
-Desde cuadrupedia arrastramos el peso hacia nosotros para trabajar una tracción vertical.
-Importante llevar el codo a las costillas para realizar el ejercicio en rango completo.

*Podemos usar cualquier objeto como una garrafa de agua, brick de leche, mochila con peso dentro o cualquier otro objeto que tengáis de peso.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=iQ0CzZx-s3U',
          'imageAsset': 'assets/images/JalonKTB.jpg'
        },
        {
          'subtitle': 'PLANCHA INVERTIDA  4x8',
          'description': '''
-Nos colocamos sentados con las piernas estiradas, apoyamos las manos cerca de nuestro cuerpo y elevamos nuestra cadera empujando con las manos y talones el suelo.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=A23RRAHd3KE&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=66',
          'imageAsset': 'assets/images/PlanchaInvertida.jpg'
        },
      ],
    },
    {
      'title': 'HIIT (10`)',
      'subtitles': [
        {
          'subtitle': '''
SENTADILLA x8
(Incluye regresión y progresión) ''',
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
          'subtitle': 'CRAB LATERAL  x12',
          'description': '''
-Desde posición de crab cruzamos la pierna de forma lateral a la vez que elevamos brazo contrario buscando la máxima extensión.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=ryM_qLSN8vg&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=28',
          'imageAsset': 'assets/images/CrabLateral.jpg'
        },
        {
          'subtitle': '''
MOUNTAIN CLIMBERS x20''',
          'description': '''
-Desde plancha llevamos las rodillas unilateralmente hacia los codos.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=E-9bRutrDEo&list=PLikrnsXmB52sjMCfXTohCIbBFbEI_HzHv&index=4',
          'imageAsset': 'assets/images/MountainClimbers.jpg'
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
        title: Text('Día 2 Semana 3 Julio', style: TextStyle(fontSize: 20 * 0.8)), // Reducido en 20%
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