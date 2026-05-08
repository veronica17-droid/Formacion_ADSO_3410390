/*4. Pedir al usuario su edad actual y mostrar cuántos años tendrá en el año 2050.*/
import 'dart:io';
void main(List<String> args) {
  //Definicion de variables
  int edad, edadEnCincuentaAnos, anoActual;
  //Ingresar datos
  stdout.writeln("Ingrese su edad actual");
  edad = int.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese el año actual");
  anoActual= int.parse(stdin.readLineSync()!);
  //proceso 
  edadEnCincuentaAnos = edad +(2050 - anoActual);
  print("Su edad actual es $edad y en cincuenta años tendrá $edadEnCincuentaAnos");


}