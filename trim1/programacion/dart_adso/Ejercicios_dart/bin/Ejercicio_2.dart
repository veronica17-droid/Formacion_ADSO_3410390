/*2. Crear un algoritmo que pida al usuario el nombre de una ciudad y su temperatura
actual en grados Celsius, y luego los muestre.*/

//Angie verónica carvajal cardona
import 'dart:io';
void main(List<String> args) {
  //Definicion de variables
  String nombre, ciudad;
  double tempCelsius;
  //Entrada de datos
  stdout.writeln("Ingrese su nombre");
  nombre= (stdin.readLineSync()!);

  stdout.writeln("Ingrese el nombre de su ciudad");
  ciudad =(stdin.readLineSync()!);

  stdout.writeln("Ingrese la temperatura de su ciudad");
  tempCelsius = double.parse(stdin.readLineSync()!);
  //Salida
  print("Su nombre es $nombre, vive en $ciudad y su temperatura es $tempCelsius grados Celsius");


}