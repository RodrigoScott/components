import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/routes/routes.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), // Spanish

      ],

      debugShowCheckedModeBanner: false,
      title: 'Segunda Aplicacion',
      //home: HomePage(),
    initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings){

        print('Ruta llamada: ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => alertPage()
            );
      },

    );
  }
}

