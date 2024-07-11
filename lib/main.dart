import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'agosto_dias_semana1.dart';
import 'agosto_dias_semana2.dart';
import 'agosto_dias_semana3.dart';
import 'agosto_dias_semana4.dart';
import 'agosto_semanas.dart';
import 'auth_service.dart';
import 'constants.dart';
import 'dia1_funcional_semana1_agosto.dart';
import 'dia1_funcional_semana2_julio.dart';
import 'dia1_funcional_semana3_julio.dart';
import 'dia1_funcional_semana4_julio.dart';
import 'dia2_funcional_semana2_julio.dart';
import 'dia2_funcional_semana3_julio.dart';
import 'dia2_funcional_semana4_julio.dart';
import 'dia3_funcional_semana2_julio.dart';
import 'dia3_funcional_semana3_julio.dart';
import 'dia3_funcional_semana4_julio.dart';
import 'julio_dias_semana2.dart';
import 'julio_dias_semana3.dart';
import 'julio_dias_semana4.dart';
import 'julio_semanas.dart';
import 'dia1_funcional_semana1_julio.dart';
import 'dia2_funcional_semana1_julio.dart';
import 'dia3_funcional_semana1_julio.dart';
import 'entrenamientos_tipos.dart';
import 'meses_funcional.dart';
import 'sign_in_page.dart';
import 'julio_dias_semana1.dart';
import 'coming_soon_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: MaterialApp(
        title: 'Semper X Fortis App',
        theme: ThemeData(
          primaryColor: Colors.amber,
          scaffoldBackgroundColor: Colors.black,
          fontFamily: 'Roboto',
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(),
          '/sign_in': (context) => SignInPage(),
          '/tipos_entrenamiento': (context) => Tipos_Entrenamientos(),
          '/mesesFuncional': (context) => MesesFuncional(),
          //'/julioFuncional': (context) => JulioDiasSemana1(),
          '/julioSemanas': (context) => JulioSemanas(),
          '/julioDiasSemana1': (context) => JulioDiasSemana1(),
          '/julioDiasSemana2': (context) => JulioDiasSemana2(),
          '/julioDiasSemana3': (context) => JulioDiasSemana3(),
          '/julioDiasSemana4': (context) => JulioDiasSemana4(),
          '/dia1_funcional_semana1_julio': (context) => Dia1FuncionalSemana1Julio(),
          '/dia2_funcional_semana1_julio': (context) => Dia2FuncionalSemana1Julio(),
          '/dia3_funcional_semana1_julio': (context) => Dia3FuncionalSemana1Julio(),
          '/dia1_funcional_semana2_julio': (context) => Dia1FuncionalSemana2Julio(),
          '/dia2_funcional_semana2_julio': (context) => Dia2FuncionalSemana2Julio(),
          '/dia3_funcional_semana2_julio': (context) => Dia3FuncionalSemana2Julio(),
          '/dia1_funcional_semana3_julio': (context) => Dia1FuncionalSemana3Julio(),
          '/dia2_funcional_semana3_julio': (context) => Dia2FuncionalSemana3Julio(),
          '/dia3_funcional_semana3_julio': (context) => Dia3FuncionalSemana3Julio(),
          '/dia1_funcional_semana4_julio': (context) => Dia1FuncionalSemana4Julio(),
          '/dia2_funcional_semana4_julio': (context) => Dia2FuncionalSemana4Julio(),
          '/dia3_funcional_semana4_julio': (context) => Dia3FuncionalSemana4Julio(),


          '/agostoSemanas': (context) => AgostoSemanas(),
          '/agostoDiasSemana1': (context) => AgostoDiasSemana1(),
          '/agostoDiasSemana2': (context) => AgostoDiasSemana2(),
          '/agostoDiasSemana3': (context) => AgostoDiasSemana3(),
          '/agostoDiasSemana4': (context) => AgostoDiasSemana4(),
          '/dia1_funcional_semana1_agosto': (context) => Dia1FuncionalSemana1Agosto(),
          '/dia2_funcional_semana1_agosto': (context) => Dia2FuncionalSemana1Julio(),
          '/dia3_funcional_semana1_agosto': (context) => Dia3FuncionalSemana1Julio(),
          '/dia1_funcional_semana2_agosto': (context) => Dia1FuncionalSemana2Julio(),
          '/dia2_funcional_semana2_agosto': (context) => Dia2FuncionalSemana2Julio(),
          '/dia3_funcional_semana2_agosto': (context) => Dia3FuncionalSemana2Julio(),
          '/dia1_funcional_semana3_agosto': (context) => Dia1FuncionalSemana3Julio(),
          '/dia2_funcional_semana3_agosto': (context) => Dia2FuncionalSemana3Julio(),
          '/dia3_funcional_semana3_agosto': (context) => Dia3FuncionalSemana3Julio(),
          '/dia1_funcional_semana4_agosto': (context) => Dia1FuncionalSemana4Julio(),
          '/dia2_funcional_semana4_agosto': (context) => Dia2FuncionalSemana4Julio(),
          '/dia3_funcional_semana4_agosto': (context) => Dia3FuncionalSemana4Julio(),


          '/coming_soon': (context) => ComingSoonPage(),
        },
        onGenerateRoute: (settings) {
          if (settings.name == kRouteEntrenamiento) {
            final args = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(
              builder: (context) {
                return Tipos_Entrenamientos();
              },
            );
          }
          return null;
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Semper X Fortis',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () async {
                const url = 'https://semperxfortis.com/';
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                } else {
                  throw 'No se pudo abrir $url';
                }
              },
              child: Image.asset(
                'assets/images/LogoSF.png',
                width: MediaQuery.of(context).size.width * 0.6,
              ),
            ),
            SizedBox(height: 18),
            Text(
              'Bienvenido a Semper X Fortis APP',
              style: TextStyle(
                fontSize: 21.6,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sign_in');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              child: const Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    const instagramUrl = 'https://www.instagram.com/semperxfortis_fitness/?hl=es';
                    if (await canLaunchUrl(Uri.parse(instagramUrl))) {
                      await launchUrl(Uri.parse(instagramUrl));
                    } else {
                      throw 'No se pudo abrir $instagramUrl';
                    }
                  },
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.instagram, size: 40, color: Colors.amber),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: FaIcon(FontAwesomeIcons.plusCircle, size: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () async {
                    const whatsappUrl = 'https://wa.me/34640686023';
                    if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
                      await launchUrl(Uri.parse(whatsappUrl));
                    } else {
                      throw 'No se pudo abrir $whatsappUrl';
                    }
                  },
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.whatsapp, size: 40, color: Colors.amber),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: FaIcon(FontAwesomeIcons.plusCircle, size: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
