/*11. Pedir el nombre de un empleado, el valor del día trabajado y el número de días
laborados en el mes; mostrar el nombre y el salario mensual.*/
//Angie verónica carvajal cardona
import 'dart:io';

void main(List<String> args) {
  //Definición de variables
  String nombre;
  double valorDiaTrabajado, salarioMensual;
  int numDias;
  //Entrada
  stdout.writeln("Ingrese el  nombre del empleado");
  nombre = (stdin.readLineSync()!);
  stdout.writeln("Ingrese el valor del día trabajado en pesos");
  valorDiaTrabajado = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el número de días laborados en el mes");
  numDias = int.parse(stdin.readLineSync()!);

  //Proceso
  salarioMensual = valorDiaTrabajado*numDias;
  //Salida
  stdout.write("Su nombre es $nombre y su salario mensual es $salarioMensual pesos");
}