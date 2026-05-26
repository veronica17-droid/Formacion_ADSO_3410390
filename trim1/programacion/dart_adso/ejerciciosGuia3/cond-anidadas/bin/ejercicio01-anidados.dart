// 1. Dado tres números calcular el mayor
import 'dart:io';

void main() {
  // DEFINICIÓN DE VARIABLES
  int num1, num2, num3;

  // ENTRADA
  stdout.writeln("Ingrese el número 1:");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el número 2:");
  num2 = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el número 3:");
  num3 = int.parse(stdin.readLineSync()!);

  // PROCESO Y SALIDA
  if (num1 >= num2 && num1 >= num3) {
    stdout.writeln("El número $num1 es el mayor.");
  } else if (num2 >= num1 && num2 >= num3) {
    stdout.writeln("El número $num2 es el mayor.");
  } else {
    stdout.writeln("El número $num3 es el mayor.");
  }
}
