import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:semilla_integral/widgets/widgets.dart';

class Sedes extends StatelessWidget {
  Sedes({Key? key}) : super(key: key);

  double screenH = 0.0, screenW = 0.0;

  @override
  Widget build(BuildContext context) {
    screenH = MediaQuery.of(context).size.height;
    screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: screenW * 0.9,
          height: screenH * 0.9,
          decoration: BoxDecoration(
            color: Color(0xFFEEF0D3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Spacer(flex: 1),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xDFE6C6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Image(
                            image: AssetImage("assets/laureles.png"),
                            width: 160),
                        titulo("Laureles", 30),
                        subtitulo(
                            "Calle 39B, Cq. 73B #N° - 67, Medellín, Antioquia",
                            10),
                        Image(
                            image: AssetImage("assets/poblado.png"),
                            width: 140),
                        titulo("Poblado", 30),
                        subtitulo(
                            "Cra. 43A No. 4Sur-115, Medellín, Antioquia", 10),
                      ],
                    ),
                  ),
                  Spacer(flex: 1),
                  Column(
                    children: [
                      Image(
                          image: AssetImage("assets/envigado.png"), width: 160),
                      titulo("Envigado", 30),
                      subtitulo("Cl. 32B Sur #48243, Envigado, Antioquia", 10),
                      Image(image: AssetImage("assets/llanog.png"), width: 160),
                      titulo("Llano Grande", 30),
                      subtitulo(
                          "Sector 3 Puertas Llanogrande Rionegro, Medellín, Medellin",
                          10),
                    ],
                  ),
                  Spacer(flex: 1),
                ],
              ),
              Image(image: AssetImage("assets/sanc.png"), width: 160),
              titulo("San Cristóbal", 30),
              subtitulo("a 65-172,, Cra. 55 #65-2, Medellín, Antioquia", 10),
            ],
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: titulo("SEDES", 20),
          backgroundColor: Color(0xFFF007A78),
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
