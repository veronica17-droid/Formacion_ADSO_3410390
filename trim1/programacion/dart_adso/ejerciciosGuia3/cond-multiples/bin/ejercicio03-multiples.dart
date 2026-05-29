import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //DEFINCION DE VARIABLES
  int v, num;
  double resultado;

  //ENTRADA
  stdout.writeln("Ingrese el valor de la variable V (entero)");
  v = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el valor de la variable NUM (1-3 o cualquier otro)");
  num = int.parse(stdin.readLineSync()!);

  //PROCESO
  switch (num) {
    case 1:
      resultado = 100 * v.toDouble();
      stdout.write("Resultado de la función: $resultado");
      break;
    case 2:
      resultado =  pow(100, v).toDouble();
      stdout.write("Resultado de la función: $resultado");
      break;
    case 3:
      resultado = 100 / v;
      stdout.write("Resultado de la función: $resultado");
      break;
    default:
      resultado = 0;
      stdout.write("Resultado de la función: $resultado");
  }
}