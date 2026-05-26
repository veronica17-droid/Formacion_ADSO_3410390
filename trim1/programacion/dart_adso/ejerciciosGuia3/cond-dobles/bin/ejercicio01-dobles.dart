/*1. Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente. */
import 'dart:io';

void main(List<String> args) {
  //DEFINICIÓN DE VARIABLES
  int num1, num2;
  //ENTRADA
  stdout.writeln("Ingrese el número 1");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el número 2");
  num2 = int.parse(stdin.readLineSync()!);
  //PROCESO Y SALIDA
  if (num1 < num2) {
    stdout.write("Los números de forma ascendente son $num1, $num2");
  } else {
    stdout.write("Los números de forma ascendente son $num2, $num1");
  }
}
