import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto/controlador/controladorgeneral.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class pagina3_misproductos extends StatefulWidget {
  const pagina3_misproductos({super.key});

  @override
  State<pagina3_misproductos> createState() => _pagina3_misproductosState();
}

class _pagina3_misproductosState extends State<pagina3_misproductos> {
  controladorGeneral Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: Control.pro.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Control.pro[index].cantidad == 0
                        ? Text("")
                        : ListTile(
                            leading: Image(
                                image: NetworkImage(Control.pro[index].imagen)),
                            title: Text(Control.pro[index].nombre),
                            subtitle: Text("precio: " +
                                Control.pro[index].precio.toString() +
                                " / Cantidad : " +
                                Control.pro[index].cantidad.toString()),
                            trailing: Text((Control.pro[index].cantidad *
                                    Control.pro[index].precio)
                                .toString()),
                          );
                  },
                ),
              ),
              Divider(),
              Text(
                "Total a pagar : " + Control.calcularTotal().toString(),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(),
              ElevatedButton.icon(
                  onPressed: () {
                    Alert(
                        context: context,
                        title: "ATENCION!!!",
                        desc: "Compra Realizada Satisfactoriamente",
                        buttons: [
                          DialogButton(
                              child: Text("CERRAR"),
                              onPressed: () {
                                Control.limpiarTodo();
                                Navigator.pop(context);
                                Control.cambiarposicion(0);
                              })
                        ]).show();
                  },
                  icon: Icon(
                    Icons.monetization_on,
                    size: 50,
                  ),
                  label: Text("Finalizar Compra"))
            ],
          ),
        ));
  }
}
