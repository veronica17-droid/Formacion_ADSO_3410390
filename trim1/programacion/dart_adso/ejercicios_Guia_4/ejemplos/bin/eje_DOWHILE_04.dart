/*
Eje_04.
Gener eun menú que permita las siguientes operaciones: 
suma, resta, multiplicación y division. Se debe contar con una 
opsción para salir
 */

import 'dart:io';

void main(List<String> args) {
  int opcion;
  double num1, num2;
  double operacion;
  do {
    print("-- Menú calculadora --");
    print("1. Suma");
    print("2. Resta");
    print("3. Multiplicación");
    print("4. División");
    print("5. Salir");
    print("----------------------");
    print("Ingrese la opción deseada");
    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:
        print("Ingrese el número 1 a sumar");
        num1 = double.parse(stdin.readLineSync()!);
        print("Ingrese el número 2 a sumar");
        num2 = double.parse(stdin.readLineSync()!);
        operacion = num1 + num2;
        print("El valor de la suma es $operacion");
        break;
      case 2:
        print("Ingrese el número 1 a restar");
        num1 = double.parse(stdin.readLineSync()!);
        print("Ingrese el número 2 a restar");
        num2 = double.parse(stdin.readLineSync()!);
        if (num1 >= num2) {
          operacion = num1 - num2;
        } else {
          operacion = num2 - num1;
        }
        print("El valor de la resta es $operacion");
        break;
      case 3:
        print("Ingrese el número 1 a multiplicar");
        num1 = double.parse(stdin.readLineSync()!);
        print("Ingrese el número 2 a multiplicar");
        num2 = double.parse(stdin.readLineSync()!);
        operacion = num1 * num2;
        print("El valor de la multiplicación es $operacion");

        break;
      case 4:
        print("Ingrese el número 1 a dividir");
        num1 = double.parse(stdin.readLineSync()!);
        print("Ingrese el número 2 a dividir");
        num2 = double.parse(stdin.readLineSync()!);
        if (num2 == 0) {
          print("Error division por cero, número indeterminado");
        } else {
          operacion = num1 / num2;
          print("El valor de la division es $operacion");
        }
        break;
      case 5:
        print("Has salido");
        break;
      default:
        print("Opción incorrecta");
        break;
    }
  } while (opcion != 5);
}
