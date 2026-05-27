/*7. Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los
reste y si no que los sume.*/
import 'dart:io';

void main(List<String> args) {
  //DEFINICION DE VARIABLES
  int num1, num2;
  //ENTRADA
  stdout.writeln("Ingrese el número 1");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el número 2");
  num2 = int.parse(stdin.readLineSync()!);
  //PROCESO
  if(num1 == num2){
    int multiplicacion = num1 * num2;
    stdout.write(multiplicacion);
  }else if(num1>num2){
    int resta = num1 - num2;
    stdout.write(resta);
  }else{
    int suma = num1 + num2;
    stdout.write(suma);
  }
}