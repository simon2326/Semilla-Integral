import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Text titulo(String texto, double size) {
  return Text(
    texto,
    style: TextStyle(
      fontFamily: 'Khand',
      fontWeight: FontWeight.bold,
      fontSize: size,
    ),
    textAlign: TextAlign.center,
  );
}

Text subtitulo(String texto, double size) {
  return Text(
    texto,
    style: TextStyle(
      fontFamily: 'Khand',
      fontSize: size,
      fontWeight: FontWeight.w500,
    ),
    textAlign: TextAlign.center,
  );
}

Text texto(String texto) {
  return Text(
    texto,
    style: TextStyle(
      fontFamily: 'Khand',
      fontWeight: FontWeight.normal,
      fontSize: 20,
    ),
  );
}

GestureDetector Button(VoidCallback funcion, Color bgColor, String texto,
    double width, double height) {
  return GestureDetector(
    onTap: funcion,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1),
      ),
      child: Center(
          child: Text(
        texto,
        style: TextStyle(fontFamily: 'Khand', fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      )),
    ),
  );
}

GestureDetector Button2(VoidCallback funcion, Color bgColor, String texto) {
  return GestureDetector(
    onTap: funcion,
    child: Container(
      width: 180,
      height: 20,
      child: Center(
          child: Text(texto,
              style: TextStyle(
                  fontFamily: 'Khand',
                  fontWeight: FontWeight.bold,
                  color: bgColor))),
    ),
  );
}

GestureDetector ImgButton(VoidCallback funcion, String imRuta, double imgSize) {
  return GestureDetector(
    onTap: funcion,
    child: Container(
      child: Center(
        child: Image(image: AssetImage(imRuta), width: imgSize),
      ),
    ),
  );
}
