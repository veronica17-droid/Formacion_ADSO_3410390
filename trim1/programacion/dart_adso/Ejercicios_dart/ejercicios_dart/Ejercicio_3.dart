/*3. Hacer un algoritmo que lea el nombre de un conductor, la distancia recorrida
(km) y el tiempo empleado (horas) para mostrar la velocidad promedio.*/

import 'dart:io';

void main(List<String> args) {
  //ENTRADA DE DATOS
  //Definicion de variables
  double distanciaRecorrida, tiempoEmpleado, velocidadPromedio;
  String nombre;

  stdout.writeln("Ingrese el nombre del conductor"); //Ingresar Datos
  nombre = stdin.readLineSync()!; //Leer el dato

  stdout.writeln("Ingrese la distancia recorrida en km");
  distanciaRecorrida = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese el tiempo empleado en horas");
  tiempoEmpleado = double.parse(stdin.readLineSync()!);

  //PROCESO
  velocidadPromedio = distanciaRecorrida/tiempoEmpleado;
  print("El nombre del conductor es: $nombre y su velocidad promedio es $velocidadPromedio km/h");
}
