/*17. Pedir tres números al usuario y mostrar cuál es el menor de los tres.*/
//Angie veronica carvajal cardona
import 'dart:io';

void main(List<String> args) {
  //Definicion de variables
  int num1, num2, num3;
  //Entrada
  stdout.writeln("Ingrese el número 1");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el número 2");
  num2 = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el número 3");
  num3 = int.parse(stdin.readLineSync()!);
  //Proceso y Salida
  if(num1<num2 && num1<num3){
    stdout.write("El menor de los tres es $num1");
  }else if(num2<num1 && num2<num3){
    stdout.write("El menor de los tres es $num2");
  }else{
    stdout.write("El menor de los tres es el $num3");
  }
}
