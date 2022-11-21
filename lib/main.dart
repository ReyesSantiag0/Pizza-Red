// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:proyecto_final_pizzeria/Login/Iniciar_sesion.dart';

import 'Pantalla inicial/Pinicial.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
void initState() {
  TextEditingController nombrecontrolador = TextEditingController();
  TextEditingController apellidocontrolador = TextEditingController();
  TextEditingController correocontrolador = TextEditingController();
  TextEditingController concontrolador = TextEditingController();
  super.initState();
  
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'Pantalla_Inicial',

      routes: {

      'Pantalla_Inicial' :(BuildContext context)=> Pinicial(),
      'Login' :(BuildContext context)=> Iniciarsesion(),
      },
    );
  }
}
