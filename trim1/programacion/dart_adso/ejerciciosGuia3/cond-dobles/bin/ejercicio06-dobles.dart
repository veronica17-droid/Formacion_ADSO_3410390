//EJERCICIO 6

import 'dart:io';

void main(List<String> args) {
  //DEFINICION DE VARIBALES
  double superficieTerreno, porcentajeCedro, porcentajePino, porcentajeRoble;
  int cantPino, cantRoble, cantCedro;
  //ENTRADA
  stdout.writeln("Ingrese la superficie del terreno en metros cuadrados");
  superficieTerreno = double.parse(stdin.readLineSync()!) * 10000;
  //PROCESO
  if (superficieTerreno > 1000000) {
    porcentajePino = superficieTerreno * 0.70;
    porcentajeRoble = superficieTerreno * 0.20;
    porcentajeCedro = superficieTerreno * 0.10;
    stdout.write(
      "Debe sembrar $porcentajePino Pinos, $porcentajeCedro Cedros, $porcentajeRoble Robles",
    );
  } else {
    porcentajePino = superficieTerreno * 0.50;
    porcentajeRoble = superficieTerreno * 0.30;
    porcentajeCedro = superficieTerreno * 0.20;
    stdout.write(
      "Debe sembrar $porcentajePino Pinos, $porcentajeCedro Cedros, $porcentajeRoble Robles",
    );
  }
  cantPino  = ((porcentajePino * 8) / 10).toInt();
  cantRoble = ((porcentajeRoble * 15) / 15).toInt();
  cantCedro = ((porcentajeCedro* 10) / 18).toInt();
  //SALIDA  
  stdout.writeln("Área total del terreno: $superficieTerreno m²");
  stdout.writeln("Debe sembrar:");
  stdout.writeln("Pinos: $cantPino");
  stdout.writeln("Robles: $cantRoble");
  stdout.writeln("Cedros: $cantCedro");
}
