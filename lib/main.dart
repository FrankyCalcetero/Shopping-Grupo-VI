import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto/controlador/controladorgeneral.dart';
import 'package:reto/ui/home.dart';

void main() {
  Get.put(controladorGeneral());
  runApp(const MyApp());
}
