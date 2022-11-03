import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:semilla_integral/widgets/widgets.dart';

class Reservas extends StatefulWidget {
  const Reservas({Key? key}) : super(key: key);

  @override
  State<Reservas> createState() => _Reserva();
}

class _Reserva extends State<Reservas> {
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      );
  double screenH = 0.0, screenW = 0.0;

  DateTime date = DateTime.now();
  final sedes = [
    "San Cristobal",
    "Envigado",
    "El Poblado",
    "Llano Grande",
    "Laureles"
  ];
  String? hora, sede;

  final itemsHoras = [
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
    "12:00 M",
    "12:30 M",
    "1:00 PM",
    "1:30 PM",
    "2:00 PM",
    "2:30 PM",
    "3:00 PM",
    "3:30 PM",
    "4:00 PM",
    "4:30 PM",
    "5:00 PM",
    "5:30 PM",
    "6:00 PM",
    "6:30 PM",
    "7:00 PM",
    "7:30 PM",
    "8:00 PM",
    "8:30 PM",
  ];

  String mes = DateTime.now().month.toString();

  @override
  Widget build(BuildContext context) {
    screenH = MediaQuery.of(context).size.height;
    screenW = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: screenH * 0.9,
          width: screenW * 0.9,
          decoration: BoxDecoration(
            color: Color(0xFFEEF0D3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
            titulo("¡Reserva en IFOOD!", 50),
            Divider(height: 0.01),
            Image(image: AssetImage("assets/eco.png"), width: 170),
            SizedBox(height: 8),
            ElevatedButton(
                onPressed: () async {
                  DateTime? date2 = await showDatePicker(
                      context: context,
                      initialDate: date,
                      firstDate: DateTime(2022),
                      lastDate: DateTime(2023));
                  if (date2 == null) return;
                  setState(() => date = date2);
                },
                child: subtitulo("Selecciona la fecha a reservar", 20)),
            SizedBox(height: 10),
            titulo("Fecha seleccionada", 30),
            subtitulo("${date.day}/${date.month}/${date.year}", 28),
            SizedBox(height: 30),
            Row(
              children: [
                Spacer(flex: 1),
                Column(
                  children: [
                    subtitulo("Hora:", 30),
                    SizedBox(height: 30),
                    subtitulo("Sede:", 30),
                  ],
                ),
                Spacer(flex: 1),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                            left: 0, top: 0, right: 0, bottom: 0)),
                    Container(
                      width: 200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF007A78), width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: hora,
                          iconSize: 35,
                          items: itemsHoras.map(buildMenuItem).toList(),
                          onChanged: (value) =>
                              setState(() => this.hora = value),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: 200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF007A78), width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: sede,
                          iconSize: 35,
                          items: sedes.map(buildMenuItem).toList(),
                          onChanged: (value) =>
                              setState(() => this.sede = value),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 1),
              ],
            ),
            SizedBox(height: 30),
            Button(() {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: titulo("Reserva hecha con éxito", 20)));
            }, Color(0xFF007A78), "Hacer mi reserva", screenW * 0.6, 50)
          ]),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: titulo("PEDIDO Y PAGO", 20),
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
