import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto/controlador/controladorgeneral.dart';

class pagina2_compras extends StatefulWidget {
  const pagina2_compras({super.key});

  @override
  State<pagina2_compras> createState() => _pagina2_comprasState();
}

class _pagina2_comprasState extends State<pagina2_compras> {
  controladorGeneral Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => ListView.builder(
            itemCount: Control.pro.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image(image: NetworkImage(Control.pro[index].imagen)),
                title: Text(
                  Control.pro[index].nombre +
                      "  /  " +
                      Control.pro[index].precio.toString(),
                  textAlign: TextAlign.left,
                ),
                trailing: Text(
                  Control.pro[index].cantidad.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        int nuevaCantidad = Control.pro[index].cantidad + 1;
                        Control.cambiarCantidad(index, nuevaCantidad);
                        Control.pro.refresh();
                      },
                      icon: Icon(Icons.add_circle),
                      iconSize: 30,
                    ),
                    VerticalDivider(),
                    IconButton(
                      onPressed: () {
                        int nuevaCantidad = Control.pro[index].cantidad - 1;

                        if (nuevaCantidad < 0) {
                          nuevaCantidad = 0;
                        }

                        Control.cambiarCantidad(index, nuevaCantidad);
                        Control.pro.refresh();
                      },
                      icon: Icon(Icons.remove_circle),
                      iconSize: 30,
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}
