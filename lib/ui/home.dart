import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto/controlador/controladorgeneral.dart';
import 'package:reto/ui/menu.dart';
import 'package:reto/ui/pagina1_inicio.dart';
import 'package:reto/ui/pagina2_comprar.dart';
import 'package:reto/ui/pagina3_misproductos.dart';
import 'package:reto/ui/pagina4_acercade.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reto 2 Shopping',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Shopping Grupo VI'),
      debugShowCheckedModeBanner: false,
    );
  }
}

List paginas = [
  pagina1_inicio(),
  pagina2_compras(),
  pagina3_misproductos(),
  pagina4_acercade()
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  controladorGeneral Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx(() => paginas[Control.posicionPagina]),
    );
  }
}
