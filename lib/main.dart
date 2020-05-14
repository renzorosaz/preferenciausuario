import 'package:flutter/material.dart';
import 'package:prefe/share_prefs/preferiencias_usuario.dart';
import 'package:prefe/src/pages/home_page.dart';
import 'package:prefe/src/pages/settings_page.dart';
 
void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

   runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  
  
  final prefs = new PreferenciasUsuario();
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina,
      routes:{
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage()
      }

    );
  }
}