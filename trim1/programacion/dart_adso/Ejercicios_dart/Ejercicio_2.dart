/*2. Crear un algoritmo que pida al usuario el nombre de una ciudad y su temperatura
actual en grados Celsius, y luego los muestre.*/
import 'dart:io';
void main(List<String> args) {

  stdout.write("Ingrese el nombre de una ciudad: ");
  String? nombre = stdin.readLineSync(); // stdin.readLineSync() captura lo que el usuario escribe
  stdout.write("Ingrese su temperatura actual en grados Celsius: ");
  double? temperatura =parse.stdin.readLineSync();

  print("El nombre de la ciudad es $nombre y su temperatura es $temperatura grados Celsius");
}