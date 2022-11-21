
import 'package:flutter/material.dart';
import 'package:proyecto_final_pizzeria/Menu/Menu.dart';
import 'package:proyecto_final_pizzeria/importaciones.dart';

class Iniciarsesion extends StatefulWidget {
  static String id = 'Iniciarsesion';
  @override
  State<Iniciarsesion> createState() => _IniciarsesionState();
}

final user = TextEditingController();
final pass = TextEditingController();

String usuario = '';
String password = '';

bool passvisible = true;

class _IniciarsesionState extends State<Iniciarsesion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Iniciar sesion'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.local_pizza, color: Colors.red, size: 100.0),
              SizedBox(
                height: 20.0,
                width: double.infinity,
              ),
              Text('Red Pizza',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontFamily: 'snappyservice')),
                SizedBox(
                height: 10.0,
              ),       
              _campousuario(),
              SizedBox(
                height: 10.0,
              ),
              _campopassword(),
              SizedBox(
                height: 15.0,
              ),
              _botoningresar(),
              SizedBox(
                height: 15.0,
              ),
              _registro(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _campousuario() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            controller: user,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Email',
              labelText: 'Correo electronico',
              suffixIcon: Icon(Icons.alternate_email),
              icon: Icon(Icons.email),
            ),
            onChanged: (valor) => setState(() {
                  //correo = valor;
                })),
      );
    });
  }

  Widget _campopassword() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
              controller: pass,
              obscureText: passvisible,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'Password',
                labelText: 'Contraseña',
                suffixIcon: IconButton(
                  icon: Icon(
                      passvisible ? Icons.visibility : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark),
                  onPressed: () {
                    setState(() {
                      passvisible = !passvisible;
                    });
                  },
                ),
                icon: Icon(Icons.lock),
              ),
              onChanged: (valor) => setState(() {
                    // correo = valor;
                  })));
    });
  }

  Widget _botoningresar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text('Iniciar Sesion'),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5.0,
          color: Colors.red,
          onPressed: () {
            usuario = user.text;
            password = pass.text;

            if (usuario.isNotEmpty || password.isNotEmpty) {
              if (usuario == '1' && password == '1') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Menu(), // por defecto se va al registro pero uds colocan la ventana al menu
                    ));
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: new Text("Error al ingresar"),
                      content: new Text(
                          "Tu contraseña o correcto son incorrectos, intenta nuevamente"),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text("Ok"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              }
            } else if (usuario.isEmpty || password.isEmpty) {
              Scaffold.of(context).showSnackBar(SnackBar(
                  content:
                      Text('Se requiere ingresar un usuario o contraseña')));
            }
          });
    });
  }

  Widget _registro() {
    return sincuenta();
  }
}

class sincuenta extends StatelessWidget {
  final bool login;
  const sincuenta({
    Key? key,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? 'Aun no tienes cuenta?' : "Ya tienes una cuenta?",
          style: TextStyle(color: Colors.black),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Registro()));
          },
          child: Text(
            login ? 'Crear cuenta' : 'Iniciar sesion',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  /*Widget _fondo(BuildContext context){

    final size = MediaQuery.of(context).size;
    return Container(

    height: size.height*0.4,
    width: double.infinity,
    decoration: BoxDecoration(

      gradient: LinearGradient(
        
        colors: <Color> [
        Color.fromRGBO(53, 0, 32, 1.0),//naranja
        Color.fromRGBO(00, 00, 08, 1.0)
        ]
      )
    ),

    ); 

  }*/
}
