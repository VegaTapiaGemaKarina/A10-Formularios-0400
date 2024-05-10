import 'package:flutter/material.dart';

//import 'main.dart';
import 'package:vega/main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.shopping_cart,
              text: 'Formulario Venta',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.form1)}),
          _buildDrawerItem(
              icon: Icons.star,
              text: 'Formulario Usuario',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.form2)}),
          _buildDrawerItem(
              icon: Icons.person,
              text: 'Formulario Proveedor',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.form3)}),
          _buildDrawerItem(
              icon: Icons.favorite,
              text: 'Formulario Producto',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.form4)}),
          _buildDrawerItem(
              icon: Icons.shop,
              text: 'Formulario Compra',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.form5)}),
          const Divider(),
          ListTile(
            title: const Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return const DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/fondo10.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Sweet Candy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
