import 'package:flutter/material.dart';

class pagina1_inicio extends StatefulWidget {
  const pagina1_inicio({super.key});

  @override
  State<pagina1_inicio> createState() => _pagina1_inicioState();
}

class _pagina1_inicioState extends State<pagina1_inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Divider(),
        Text("Shoping Group VI"),
        Center(
          child: Image(
              image: NetworkImage(
                  "https://media.istockphoto.com/id/1186214628/es/vector/dise%C3%B1o-de-vectores-de-logotipo-de-icono-de-drone.jpg?s=612x612&w=0&k=20&c=EqmmnoHt9nwRwmnlIqmgArUF2w_kR-5XxS0-WJWDtyc=")),
        ),
      ],
    ));
  }
}
