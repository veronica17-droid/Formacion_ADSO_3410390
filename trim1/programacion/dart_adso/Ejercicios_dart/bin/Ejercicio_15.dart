/*15. Hacer un algoritmo que lea la temperatura de un paciente; si es mayor a 38
grados, mostrar "Tiene fiebre", de lo contrario "Temperatura normal".*/
//Angie verónica carvajal cardona
import 'dart:io';

void main(List<String> args) {
  //Definicion de variables
  double tempPaciente;
  //Entrada
  stdout.writeln("Ingrese la temperatura del paciente");
  tempPaciente = double.parse(stdin.readLineSync()!);
  //Proceso y Salida
  if (tempPaciente > 38){
    stdout.write("Tiene fiebre");
  }else{
    stdout.write("Temperatura normal");
  }
}