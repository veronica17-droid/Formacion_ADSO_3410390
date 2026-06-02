//  Una empresa de software realizará el ajuste salarial anual de sus empleados basándose en su categoría (1 a 4). Solicite el salario actual del empleado y su número de categoría. En lugar de hacer el cálculo del nuevo salario directamente dentro de cada case, utilice el switch únicamente para definir el porcentaje de aumento correspondiente a esa categoría en una variable temporal (Cat 1: 15%, Cat 2: 10%, Cat 3: 8%, Cat 4: 5%). Una vez cerrado el switch, realice el cálculo matemático final e imprima el resultado. (Esto enseña el principio DRY: No repetir código).

import 'dart:io';

void main(List<String> args) {
  double salarioActual, nuevoSalario, porcentajeAumento;
  int categoria;

  stdout.writeln("Ingrese el salario actual");
  salarioActual = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese la categoria del empleado (1, 2, 3, 4)");
  categoria = int.parse(stdin.readLineSync()!);
  porcentajeAumento = 0;
  switch (categoria) {
    case 1:
      porcentajeAumento = 0.15;
      break;
    case 2:
      porcentajeAumento = 0.10;
      break;
    case 3:
      porcentajeAumento = 0.08;
      break;
    case 4:
      porcentajeAumento = 0.05;
      break;
    default:
      porcentajeAumento = 0;
      print("Categoria incorrecta");
      break;
  }
  nuevoSalario = salarioActual + salarioActual * porcentajeAumento;
  stdout.write("El nuevo salario del empleado es: $nuevoSalario y su categoria es: $categoria");
}
