import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:semilla_integral/vistas/loginPage.dart';
import 'package:semilla_integral/vistas/consumo.dart';
import 'package:semilla_integral/vistas/estetica.dart';
import 'package:semilla_integral/widgets/widgets.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  double screenH = 0.0, screenW = 0.0;

  @override
  Widget build(BuildContext context) {
    screenH = MediaQuery.of(context).size.height;
    screenW = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF4cb24c),
      body: Center(
        child: Container(
          width: screenW * 0.9,
          height: screenH * 0.9,
          decoration: BoxDecoration(
            color: Color(0xFFF2E8DF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [
            Spacer(flex: 1),
            titulo("SECCIONES", 30),
            subtitulo("SECTIONS", 25),
            texto("SEMILLA INTEGRAL"),
            SizedBox(
              width: screenW * 0.9,
              height: 20,
            ),
            Spacer(flex: 1),
            ImgButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Consumo();
                  },
                ),
              );
            }, "assets/canasta.png", 210),
            titulo("CONSUMO", 25),
            Spacer(flex: 1),
            SizedBox(
              width: screenW * 0.9,
              height: 30,
            ),
            ImgButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Estetica();
                  },
                ),
              );
            }, "assets/estetica.png", 170),
            titulo("ESTÉTICA", 25),
            Spacer(flex: 2)
          ]),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: titulo("PÁGINA PRINCIPAL - SEMILLA INTEGRAL", 20),
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
