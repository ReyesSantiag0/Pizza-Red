import 'package:flutter/material.dart';
import 'package:proyecto_final_pizzeria/Menu/promociones.dart';
import 'package:proyecto_final_pizzeria/importaciones.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int index = 0;
  //Aqui se colocan las vistas de cada pantalla
  final pantallas = [
    Home(),
    Promo(),
    Buscar(),
    catalogo(),
    Perfil(),
  ];

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallas[index],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.monetization_on_outlined, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.local_pizza_outlined, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.red,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
