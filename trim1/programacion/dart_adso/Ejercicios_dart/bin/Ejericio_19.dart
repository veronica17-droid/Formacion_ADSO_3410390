/*19. Un trabajador cobra $20.000 por hora. Si trabaja más de 48 horas, las horas
adicionales se pagan como "Horas Extra" con un recargo de $5.000 sobre el valor
normal. Calcular su salario total.*/
//Angie Verónica Carvajal Cardona
import 'dart:io';
void main(List<String> args) {
  //Definición de variables
  double horasTrabajadas, horasExtra;
  double salarioTotal;
  double valorHoraNormal = 20000;
  double valorHoraExtra = 25000; 


  //Entrada
  stdout.writeln("Ingrese la cantidad de horas que trabajó");
  horasTrabajadas = double.parse(stdin.readLineSync()!);

  //Proceso y Salida
  if (horasTrabajadas > 48) {
    horasExtra = horasTrabajadas - 48;
    salarioTotal = (48 * valorHoraNormal) + (horasExtra * valorHoraExtra);
    stdout.write("Usted tuvo $horasExtra horas Extra y su salario total es $salarioTotal");
  } else {
    salarioTotal = horasTrabajadas * valorHoraNormal;
    stdout.write("Usted no tuvo horas extra, su salario totl es de $salarioTotal");
  }
}