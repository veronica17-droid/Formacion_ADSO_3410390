/*
En una empresa se requiere calcular el salario semanal de cada uno de los n obreros que laboran en ella. El salario se obtiene de la sig. forma: Si el obrero trabaja 40 horas o menos se le paga $20 por hora 
Si trabaja más de 40 horas se le paga $20 por cada una de las primeras 40 horas y $25 por cada hora extra. 
 */
import 'dart:io';

void main(List<String> args) {
  int numObreros;
  int cont = 0;
  double salario, horasTrabajadas;
  print("Ingrese la cantidad de obreros que trabajan");
  numObreros = int.parse(stdin.readLineSync()!);
  while (cont < numObreros) {
    cont ++;
    print("Obrero número: $cont");
    print("Ingrese las horas que trabajó");
    horasTrabajadas = double.parse(stdin.readLineSync()!);
    if (horasTrabajadas <= 40) {
      salario = horasTrabajadas * 20;
      print("Su salario es: \$$salario");
    }else{
      salario = 40 * 20;
      double horasExtra = horasTrabajadas - 40;
      horasExtra *= 25;
      salario = salario + horasExtra;
      print("Su salario es: \$$salario");
    }

  }
}