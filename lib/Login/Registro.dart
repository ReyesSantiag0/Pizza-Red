// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  //final ValueChanged<String> onChanged;
  // TextEditingController nombrecontrolador = TextEditingController();
  // TextEditingController apellidocontrolador = TextEditingController();
  // TextEditingController correocontrolador = TextEditingController();
  //TextEditingController concontrolador = TextEditingController();
  bool passwordvisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Registro'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 15.0,
              ),
              _Nombre(),
              SizedBox(
                height: 15.0,
              ),
              _Apellido(),
              SizedBox(
                height: 15.0,
              ),
              _Correo(),
              SizedBox(
                height: 15.0,
              ),
              _Celular(),
              SizedBox(
                height: 15.0,
              ),
              _Contrasena(),
              SizedBox(
                height: 15.0,
              ),
              _BtnRegistrar()
            ],
          ),
        ),
      ),
    );
  }

  Widget _Nombre() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Nombre',
          labelText: 'Nombres',
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) => setState(
        () {},
      ),
    );
  }

  Widget _Apellido() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Apellido',
          labelText: 'Apellidos',
          icon: Icon(Icons.account_circle_sharp)),
      onChanged: (valor) => setState(
        () {},
      ),
    );
  }

  Widget _Correo() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Email',
        labelText: 'Correo electronico',
        icon: Icon(Icons.email),
      ),
      onChanged: (valor) => setState(
        () {},
      ),
    );
  }

  Widget _Celular() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Número celular',
        labelText: 'Celular',
        icon: Icon(Icons.phone_outlined),
      ),
      onChanged: (valor) => setState(
        () {},
      ),
    );
  }

  Widget _Contrasena() {
    return TextField(
      obscureText: passwordvisible,
      // onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Password',
        labelText: 'Contraseña',
        icon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(passwordvisible ? Icons.visibility : Icons.visibility_off,
              color: Theme.of(context).primaryColorDark),
          onPressed: () {
            setState(() {
              passwordvisible = !passwordvisible;
            });
          },
        ),
      ),
      onChanged: (valor) => setState(
        () {},
      ),
    );
  }

  Widget _BtnRegistrar() {
    return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: Text('Registrate'),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5.0,
        color: Colors.green,
        onPressed: () {});
  }

/*@override
  void initState() {
    // TODO: implement initState
    nombrecontrolador = TextEditingController();
    apellidocontrolador = TextEditingController();
    correocontrolador = TextEditingController();  
    concontrolador = TextEditingController(); 
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nombrecontrolador.dispose();
    apellidocontrolador.dispose();
    correocontrolador.dispose();
    concontrolador.dispose();
  }
  */
}
