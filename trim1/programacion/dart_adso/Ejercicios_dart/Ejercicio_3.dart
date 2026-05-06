/*3. Hacer un algoritmo que lea el nombre de un conductor, la distancia recorrida
(km) y el tiempo empleado (horas) para mostrar la velocidad promedio.*/

import 'dart:io';

void main(List<String> args) {

  //ENTRADA DE DATOS
  stdout.writeln("Ingrese el precio del producto: ");
  precio = double.parse(stdin.readLineSync()!);


  double distanciaRecorrida, tiempoEmpleado, velocidadPromedio;

  stdout.writeln("Ingrese el nombre del conductor");
  String nombre = stdin.readLineSync()!;

  stdout.write("Ingrese la distancia recorrida en km");
  distanciaRecorrida = double.parse(stdin.readLineSync()!);


  stdout.write("Ingrese el tiempo empleado en horas");
  tiempoEmpleado = double.parse(stdin.readLineSync()!);

}
