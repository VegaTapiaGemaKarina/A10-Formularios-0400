import 'package:flutter/material.dart';
import 'package:vega/drawer_menu.dart';

class Formulario5 extends StatefulWidget {
  static const String routeName = '/form5';

  @override
  _Formulario5State createState() => _Formulario5State();
}

class _Formulario5State extends State<Formulario5> {
  TextEditingController idCompraController = TextEditingController();
  TextEditingController idProductoController = TextEditingController();
  TextEditingController fechaPedidosController = TextEditingController();
  TextEditingController fechaEntregaController = TextEditingController();
  TextEditingController diccEntregaController = TextEditingController();
  TextEditingController modoEntregaController = TextEditingController();
  TextEditingController totalPagoController = TextEditingController();
  TextEditingController envioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sweet Candy",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xffff5b8d),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                'Formulario Compra',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffff5b8d)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('id compra', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idCompraController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xffff5b8d)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el id de la Compra',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('id Producto', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idProductoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xffff5b8d)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffff004c)), // Color del borde
                  ),
                  hintText: 'Escribe el id producto',
                ),
                keyboardType: TextInputType.text,
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Fecha de Pedido', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechaPedidosController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.calendar_month,
                      color: Color(0xffff5b8d)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe la fecha de pedido',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Fecha entrega', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idProductoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.calendar_month,
                      color: Color(0xffff5b8d)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe la fecha de entrega',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Direccion de entrega',
                  style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: diccEntregaController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.circle, color: Color(0xffff5b8d)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe la direccion',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Modo de pago', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: modoEntregaController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.money_rounded, color: Color(0xffff5b8d)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el modo de pago',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Total de pago', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: totalPagoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.money_rounded, color: Color(0xffff5b8d)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el total de pago',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Modo de envio', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: envioController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.car_repair, color: Color(0xffff5b8d)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el modo de envio',
                ),
              ),
              SizedBox(
                height: 10,
              ),

              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idCompraController.text);
                  print(idProductoController.text);
                  print(fechaPedidosController.text);
                  print(fechaEntregaController.text);
                  print(diccEntregaController.text);
                  print(modoEntregaController.text);
                  print(totalPagoController.text);
                  print(envioController.text);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xff3e6777)), // Cambia el color de fondo
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30), // Ajusta el padding
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight.bold), // Cambia el estilo del texto
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Ajusta la forma del botón
                      // Puedes ajustar más propiedades aquí, como bordes, sombras, etc.
                    ),
                  ),
                ),
                child: Text(
                  'Enviar',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
