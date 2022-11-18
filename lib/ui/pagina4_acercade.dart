import 'package:flutter/material.dart';

class pagina4_acercade extends StatefulWidget {
  const pagina4_acercade({super.key});

  @override
  State<pagina4_acercade> createState() => _pagina4_acercadeState();
}

class _pagina4_acercadeState extends State<pagina4_acercade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Desarrolladores Grupo VI"),
            subtitle: Text("Nombres"),
          ),
          ListTile(
            leading: Icon(Icons.person_pin_circle),
            title: Text("UNINORTE"),
            subtitle: Text("Lugar de desarrollo"),
          ),
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text("311555555"),
            subtitle: Text("Contacto"),
          ),
          ListTile(
            leading: Icon(Icons.email_rounded),
            title: Text("GrupoVI@uninorte.edu"),
            subtitle: Text("Email"),
          )
        ],
      ),
    );
  }
}
