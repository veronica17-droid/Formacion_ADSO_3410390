/*12. Pedir un número al usuario y determinar si es divisible por 5.*/
//Angie Verónica carvajal Cardona
import 'dart:io';

void main(List<String> args) {
  //Definición de variables
  double num;
  //Entrada
  stdout.writeln("Ingrese un número para saber si es divisible entre 5");
  num = double.parse(stdin.readLineSync()!);
  //Proceso
  if (num % 5==0){
    stdout.write("El número $num es divisible entre 5");
  }else{
    stdout.write("El número no es divisible entre 5");
  }
}