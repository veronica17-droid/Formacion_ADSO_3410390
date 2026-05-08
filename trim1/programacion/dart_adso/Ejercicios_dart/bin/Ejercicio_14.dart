/*14. Pedir dos números y mostrar el resultado de restarle el menor al mayor.*/
//Angie veronica carvajal cardona
import 'dart:io';

void main(List<String> args) {
  //Definicion de variables
  double num1, num2, resultado;
  //Entrada
  stdout.writeln("Ingrese el número 1");
  num1 = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el número 2");
  num2 = double.parse(stdin.readLineSync()!);
  //Proceso y salida
  if(num1>num2){
    resultado = num2 - num1;
    stdout.write("El resultado de restar $num2 menos $num1 es $resultado");
  }else if(num1<num2){
    resultado = num1 - num2;
    stdout.write("El resultado de restar $num1 menos $num2 es $resultado");
  }else{
    stdout.write("Los números son iguales");
  }

}