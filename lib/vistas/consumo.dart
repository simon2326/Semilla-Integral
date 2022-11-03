import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:semilla_integral/vistas/order.dart';
import 'package:semilla_integral/widgets/widgets.dart';
import 'package:flutter/src/painting/box_shadow.dart';

class Consumo extends StatelessWidget {
  Consumo({Key? key}) : super(key: key);

  double screenH = 0.0, screenW = 0.0;

  @override
  Widget build(BuildContext context) {
    screenH = MediaQuery.of(context).size.height;
    screenW = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.elliptical(50, 50)),
              color: Color(0xFF4cb24c),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 0,
                  child: Container(
                    height: 70,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 20, left: 10, child: titulo("SECCIÓN CONSUMO", 45)),
              ],
            ),
          ),
          SizedBox(
            height: screenH * 0.02,
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                children: [
                  Container(
                    height: 230,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 35,
                          left: 28,
                          child: Material(
                            child: Container(
                              height: 180,
                              width: screenW * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: new Offset(-10, 10),
                                    blurRadius: 20,
                                    spreadRadius: 4,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.grey.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              height: 200,
                              width: 190,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/yogurt.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 210,
                          child: Container(
                            height: 150,
                            width: 190,
                            child: Column(
                              children: [
                                titulo("Yogurt", 20),
                                Spacer(flex: 1),
                                subtitulo("DESCRIPCIÓN YOGURT DE CABRA", 11),
                                Spacer(flex: 1),
                                titulo(r"$16.000", 16),
                                Spacer(flex: 1),
                                Button2(() {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: titulo(
                                              "Yogurt añadido al carrito",
                                              20)));
                                }, Color(0xFF4cb24c), "Añadir")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 230,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 35,
                          left: 28,
                          child: Material(
                            child: Container(
                              height: 180,
                              width: screenW * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: new Offset(-10, 10),
                                    blurRadius: 20,
                                    spreadRadius: 4,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.grey.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              height: 200,
                              width: 190,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/dushi.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 215,
                          child: Container(
                            height: 150,
                            width: 190,
                            child: Column(
                              children: [
                                titulo("Pan de cocholate Dushi", 20),
                                Spacer(flex: 1),
                                subtitulo(
                                    "Descripción pan de chocolate Dushi", 11),
                                Spacer(flex: 1),
                                titulo(r"$13.250", 16),
                                Spacer(flex: 1),
                                Button2(() {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: titulo(
                                              "Pan de chocolate dushi añadido al carrito",
                                              20)));
                                }, Color(0xFF4cb24c), "Añadir")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 230,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 35,
                          left: 28,
                          child: Material(
                            child: Container(
                              height: 180,
                              width: screenW * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: new Offset(-10, 10),
                                    blurRadius: 20,
                                    spreadRadius: 4,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.grey.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              height: 200,
                              width: 190,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/paleta.png"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 206,
                          child: Container(
                            height: 150,
                            width: 190,
                            child: Column(
                              children: [
                                titulo("Paletas saludables", 20),
                                Spacer(flex: 1),
                                subtitulo("DESCRIPCIÓN PALETAS SALUDABLES", 11),
                                Spacer(flex: 1),
                                titulo(r"$15.750", 16),
                                Spacer(flex: 1),
                                Button2(() {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: titulo(
                                              "Paletas saludables añadidas al carrito",
                                              20)));
                                }, Color(0xFF4cb24c), "Añadir")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 230,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 35,
                          left: 28,
                          child: Material(
                            child: Container(
                              height: 180,
                              width: screenW * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: new Offset(-10, 10),
                                    blurRadius: 20,
                                    spreadRadius: 4,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.grey.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              height: 200,
                              width: 190,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/huevo.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 206,
                          child: Container(
                            height: 150,
                            width: 190,
                            child: Column(
                              children: [
                                titulo("Huevos del paraiso", 20),
                                Spacer(flex: 1),
                                subtitulo(
                                    "DESCRIPCIÓN DE HUEVOS DE GALLINAS FELICES",
                                    11),
                                Spacer(flex: 1),
                                titulo(r"$23.350", 16),
                                Spacer(flex: 1),
                                Button2(() {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: titulo(
                                              "Huevos del paraiso añadidos al carrito",
                                              20)));
                                }, Color(0xFF4cb24c), "Añadir")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenH * 0.1,
            child: Row(
              children: [
                Spacer(flex: 1),
                Column(
                  children: [
                    titulo("Productos", 15),
                    subtitulo("producto 1", 10),
                    subtitulo("producto 3", 10),
                    subtitulo("producto 3", 10),
                  ],
                ),
                Spacer(flex: 2),
                Column(
                  children: [titulo("Costo", 20), subtitulo(r"280.000$", 15)],
                ),
                Spacer(flex: 2),
                Column(
                  children: [
                    Spacer(flex: 1),
                    Button(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Order();
                        },
                      ));
                    }, Color(0xff4cb24c), "Ver\n pedido", 100, 50),
                    Spacer(flex: 1),
                  ],
                ),
                Spacer(flex: 1),
              ],
            ),
          ),
        ],
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: titulo("SECCIÓN DE CONSUMO", 20),
          backgroundColor: Color(0xFF4cb24c),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
            onPressed: () => Navigator.pop(context, true),
          ),
        ),
      ),
    );
  }
}
