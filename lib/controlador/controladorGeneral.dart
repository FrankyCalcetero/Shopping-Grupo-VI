import 'package:get/get.dart';
import 'package:reto/clases/productos.dart';

class controladorGeneral extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;

  @override
  void onInit() {
    pro.add(productos(
        001,
        "DJI Drone",
        "https://assets.stickpng.com/images/580b57fbd9996e24bc43bfac.png",
        0,
        425000));
    pro.add(productos(
        002,
        "Drone Negro",
        "https://www.pngplay.com/wp-content/uploads/1/Drone-Download-Free-PNG.png",
        0,
        680000));
    pro.add(productos(
        003,
        "Drone Camara",
        "https://assets.stickpng.com/images/580b57fbd9996e24bc43bfac.png",
        0,
        778000));
    pro.add(productos(
        004,
        "Dron Carga",
        "https://dronehibrido.com/es/img/drone-hibrido-camara-termica.png",
        0,
        1250000));
    pro.add(productos(
        005,
        "Dron Riego",
        "https://ae01.alicdn.com/kf/H63e05cbb72034fa2bc7b8bd23fd00985K/PULVERIZADOR-DE-Dron-de-riego-agr-cola-m-dulo-cl-sico-y-brazos-de-plegado-r.jpg_Q90.jpg_.webp",
        0,
        3165000));

    // TODO: implement onInit
    super.onInit();
  }

  void cambiarposicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }
    return total;
  }

  void limpiarTodo() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
