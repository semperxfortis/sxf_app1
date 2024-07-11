import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'auth_service.dart';

class Dia1FuncionalSemana1Julio extends StatelessWidget {
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
          'youtubeUrl': 'https://www.youtube.com/watch?v=zPjNxqIVXro',
          'imageAsset': 'assets/images/DeadBug(contralateral).jpg'
        },
        {
          'subtitle': 'PUENTE (incluye progresión) 1x12',
          'description': '''
-Flexionamos rodillas a 90º.
-Empujamos con los talones el suelo, elevando nuestra cadera hasta extender completamente. 
-Cuidado con pasarnos e hiperextender la zona lumbar.

Progresión
-Mismo trabajo de activación de cadera que el puente pero de forma unilateral. 
          ''',
          'youtubeUrl': 'https://youtu.be/9MIlccYQ-Yg',
          'imageAsset': 'assets/images/Puente.jpg'
        },
        {
          'subtitle': '''CAT CAMEL 1x10
          ''',
          'description': '''
-Desde cuadrupedia buscamos máxima flexión y extensión de nuestra columna.
-Partimos siempre desde la cadera buscando mover vertebra a vertebra
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=8doAFdktJEM',
          'imageAsset': 'assets/images/CatCamel.jpg'
        },
        {
          'subtitle': '''
FLEXIÓN-EXTENSIÓN CADERA  1x10
(Incluye progresión)
        ''',
          'description': '''
-Desde cuadrupedia buscamos la máxima flexión de la cadera llevando nuestro glúteo hacia los talones sin perder la posición neutra de la columna.
-Volvemos a la extensión llevando nuestra cadera hacia delante. 

Progresión 
-Elevamos rodillas del suelo
''',
          'youtubeUrl': 'https://youtu.be/CfIZ1fHZZqw',
          'imageAsset': 'assets/images/FlexExtCadera.jpg'
        },
        {
          'subtitle': '''
ROTACIONES TRONCO  1x10-10
(Incluye regresión y progresión)
        ''',
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
SENTADILLA 4x10-12
(Incluye regresión y progresión)         
          ''',
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
APERTURAS ALTAS GOMA 4x10
          ''',
          'description': '''
Con los brazos estirados a la altura de los hombros realizamos una apertura buscando juntar nuestras escápulas.
*Si no disponemos de goma, podemos usar una toalla. 
          ''',
          'youtubeUrl': 'https://youtu.be/lSKDrulW7Yk',
          'imageAsset': 'assets/images/AperturasAltasGoma.jpg'
        },
        {
          'subtitle': '''
PLANCHA TOQUES 4x16
          ''',
          'description': '''
-Desde una plancha de manos, vamos a tocar con una mano nuestro hombro contrario, buscando que la cadera no se mueva durante el ejercicio.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=IXTWt3zyVyI',
          'imageAsset': 'assets/images/PlanchaToques.jpg'
        },
      ],
    },
    {
      'title': 'BLOQUE 2 FUERZA',
      'subtitles': [
        {
          'subtitle': 'PESO MUERTO BM 4x8-8',
          'description': '''
-Adelantamos ligeramente uno de los dos pies.
-Elevamos el talón del pie de atrás para cargar todo el peso en la pierna adelantada.
-Buscamos la máxima flexión de cadera
          ''',
          'youtubeUrl': 'https://youtu.be/bpuUTBAVMsc',
          'imageAsset': 'assets/images/PesoMuertoBM.jpg'
        },
        {
          'subtitle': '''
FLEXIONES 4x10
(Incluye regresión I y II y progresión) 
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
-Buscamos un trabajo unilateral cargando más peso del cuerpo hacia cada brazo
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=RLuy7ZWTTsY',
          'imageAsset': 'assets/images/Flexiones.jpg'
        },
        {
          'subtitle': 'CRAB REACH 4x8',
          'description': '''
-Desde posición de crab buscamos una extensión máxima de la cadera
-Elevamos nuestro brazo intentando tocar la mano contraria.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=xVqvuxnxgJo',
          'imageAsset': 'assets/images/CrabReach.jpg'
        },
      ],
    },
    {
      'title': 'HIIT (10´)',
      'subtitles': [
        {
          'subtitle': 'JUMPING JACKS x30',
          'description': '''
-Realizamos saltos laterales separando y juntando brazos a la vez que las piernas.
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=JKr13yPxQnM',
          'imageAsset': 'assets/images/JumpingJacks.jpg'
        },
        {
          'subtitle': 'MOUNTAIN CLIMBERS x20',
          'description': '''
-Desde plancha llevamos las rodillas unilateralmente hacia los codos
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=E-9bRutrDEo',
          'imageAsset': 'assets/images/MountainClimbers.jpg'
        },
        {
          'subtitle': '''
SKT x10'
(Incluye regresión y progresión)
          ''',
          'description': '''
-Nos colocamos en cuadrupedia con rodillas elevadas.
-Rotamos el tronco estirando la pierna hacia el lado contrario a la vez que llevamos el codo atrás.

Regresión - sin patada
-Facilitamos el movimiento quitando el estiramiento de la pierna

Progresión - patada alta
-Dificultamos el ejercicio elevando la pierna estirada lo máximo posible 
          ''',
          'youtubeUrl': 'https://www.youtube.com/watch?v=8L1viJRpLJY',
          'imageAsset': 'assets/images/SKT.jpg'
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
        title: Text('Día 1 Semana 1 Julio', style: TextStyle(fontSize: 20 * 0.8)), // Reducido en 20%
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