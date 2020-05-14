import 'package:flutter/material.dart';
import 'package:prefe/share_prefs/preferiencias_usuario.dart';
import 'package:prefe/src/pages/settings_page.dart';

import 'menu_widget.dart';

class HomePage extends StatelessWidget {

  static final String routeName='home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {

    prefs.ultimaPagina= SettingsPage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.black,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario ${prefs.colorSecundario}'),
          Divider(),
          Text('Genero ${prefs.genero} '),
          Divider(),
          Text('Nombre de Usuario ${prefs.nombreUsuario}'),
        ],
      )
    );
  }

  /* Widget _crearMenu(BuildContext context){

    return Drawer(
      child: ListView(
        padding:EdgeInsets.zero ,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/original.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),

          ListTile(
            leading: Icon(Icons.pages,color: Colors.blue),
            title: Text('Home'),
            onTap:() => Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),

          ListTile(
            leading: Icon(Icons.party_mode,color: Colors.blue),
            title: Text('Party Mode'),
            onTap:(){}
          ),
          ListTile(
            leading: Icon(Icons.people,color: Colors.blue),
            title: Text('People'),
            onTap:(){}
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Colors.blue),
            title: Text('Settings'),
            onTap:() {

              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            }
          )


        ],
      )      
    );
  } */

}