/*10. Hacer un algoritmo que lea un número de metros y lo convierta a centímetros y
milímetros.*/
//Angie verónica carvajal cardona
import 'dart:io';
void main(List<String> args) {
  //Definición de variables 
  double numMetros, numCentimetros, numMilitmetros;
  //Entrada
  stdout.writeln("Ingrese un número en metros");
  numMetros = double.parse(stdin.readLineSync()!);
  //Proceso
  numCentimetros = numMetros*100;
  numMilitmetros= numCentimetros*100;
  //Salida
  stdout.write("Tiene $numMetros metros, en centimetros es $numCentimetros cm y en milímetros es $numMilitmetros mm");
}