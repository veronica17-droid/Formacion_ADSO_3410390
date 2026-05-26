/*2. Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera: • Si trabaja 40 horas o menos se le paga $16 por hora • Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora extra. */
import 'dart:io';

void main(List<String> args) {
  //DEFINICIÓN DE VARIABLES
  double horasTrabajadas, horasExtra, pago;
  // ENTRADA  
  stdout.writeln("Ingrese la cantidad de horas que trabajó");
  horasTrabajadas = double.parse(stdin.readLineSync()!);
  //PROCESO
  if(horasTrabajadas <= 40){
    pago = horasTrabajadas * 16 ;
    stdout.writeln("Su pago semanal es \$$pago");
  }else {
    horasExtra = horasTrabajadas - 40;
    pago = (16 * 40) + horasExtra * 20;
    stdout.writeln("Su pago semanal es \$$pago");
  }
}