import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto/controlador/controladorgeneral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorGeneral Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(98, 26, 32, 68)),
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.upstatesprayfoam.com/wp-content/uploads/2021/12/fpo-male-portrait.jpg"),
                  ),
                  accountName: Text("Grupo IV"),
                  accountEmail: Text("@uninorte.edu")),
            ),
            Divider(),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.blueGrey,
                  ),
                  title: Text("Inicio",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  textColor: Colors.blueGrey,
                  trailing: Icon(Icons.arrow_right, color: Colors.blueGrey),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarposicion(0);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_basket, color: Colors.blueGrey),
                  title: Text("Productos",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  textColor: Colors.blueGrey,
                  trailing: Icon(Icons.arrow_right, color: Colors.blueGrey),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarposicion(1);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart_checkout,
                      color: Colors.blueGrey),
                  title: Text("Mis Productos",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  textColor: Colors.blueGrey,
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.blueGrey,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarposicion(2);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.blueGrey,
                  ),
                  title: Text("Acerca de...",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  textColor: Colors.blueGrey,
                  trailing: Icon(
                    Icons.arrow_right_alt_rounded,
                    color: Colors.blueGrey,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarposicion(3);
                  },
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
