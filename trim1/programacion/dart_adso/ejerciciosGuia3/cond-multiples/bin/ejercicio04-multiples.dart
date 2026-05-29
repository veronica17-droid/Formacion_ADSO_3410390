import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //DEFINICION DE VARIABLES
  int x, residuo;
  double resultado = 0;

  //ENTRADA
  stdout.writeln("Ingrese el valor de x");
  x = int.parse(stdin.readLineSync()!);

  //PROCESO
  residuo = x % 4;

  switch (residuo) {
    case 0:
      resultado = pow(x, 2).toDouble();
      stdout.writeln("f(x) = x^2");
      stdout.writeln("Resultado: $resultado");
      break;

    case 1:
      resultado = x / 6;
      stdout.writeln("f(x) = x / 6");
      stdout.writeln("Resultado: $resultado");
      break;

    case 2:
      resultado = sqrt(x);
      stdout.writeln("f(x) = raiz(x)");
      stdout.writeln("Resultado: $resultado");
      break;

    case 3:
      resultado = pow(x, 3).toDouble() + 5;
      stdout.writeln("f(x) = x^3 + 5");
      stdout.writeln("Resultado: $resultado");
      break;

    default:
      stdout.writeln("Error");
  }
}