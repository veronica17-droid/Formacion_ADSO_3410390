/*9. Pedir el lado de un cubo y calcular su volumen V = lado^3.*/
//Angie verónica carvajal cardona
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //Definicion de variables
  double lado, volumen;
  //Entrada
  stdout.writeln("Ingrese el lado de su cuadrado");
  lado = double.parse(stdin.readLineSync()!);
  //Proceso 
  volumen = pow(lado, 3).toDouble(); //.toDouble() = Lo uso para convertir pow (que devuelve un número) a double
  //Salida
  print("El volumen del cuadrado es $volumen");

}