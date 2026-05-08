/*3. Hacer un algoritmo que lea el nombre de un conductor, la distancia recorrida
(km) y el tiempo empleado (horas) para mostrar la velocidad promedio.*/

//Angie verónica carvajal cardona
import 'dart:io';

void main(List<String> args) {
  //Definicion de variables
  double distanciaRecorrida, tiempoEmpleado, velocidadPromedio;
  String nombre;

   //ENTRADA DE DATOS
  stdout.writeln("Ingrese el nombre del conductor"); //Ingresar Datos
  nombre = stdin.readLineSync()!; //Leer el dato

  stdout.writeln("Ingrese la distancia recorrida en km");
  distanciaRecorrida = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese el tiempo empleado en horas");
  tiempoEmpleado = double.parse(stdin.readLineSync()!);

  //PROCESO
  velocidadPromedio = distanciaRecorrida/tiempoEmpleado;
  //Salida
  print("El nombre del conductor es: $nombre y su velocidad promedio es $velocidadPromedio km/h");
}
