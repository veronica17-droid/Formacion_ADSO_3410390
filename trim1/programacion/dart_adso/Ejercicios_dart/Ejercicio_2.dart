/*2. Crear un algoritmo que pida al usuario el nombre de una ciudad y su temperatura
actual en grados Celsius, y luego los muestre.*/
import 'dart:io';
void main(List<String> args) {
  String nombre, ciudad;
  double TemperaturaCelsius;

  stdout.writeln("Ingrese su nombre");
  nombre= (stdin.readLineSync()!);

  stdout.writeln("Ingrese el nombre de su ciudad");
  ciudad =(stdin.readLineSync()!);

  stdout.writeln("Ingrese la temperatura de su ciudad");
  TemperaturaCelsius = double.parse(stdin.readLineSync()!);

  print("Su nombre es $nombre, vive en $ciudad y su temperatura es $TemperaturaCelsius grados Celsius");


}