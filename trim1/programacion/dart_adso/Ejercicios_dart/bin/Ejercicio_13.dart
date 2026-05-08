/*13. Leer la edad de una persona y mostrar un mensaje indicando si es mayor de
edad o menor de edad.*/

//Angie verónica carvajal cardona
import 'dart:io';

void main(List<String> args) {
  //Declaración de variable
  int edad;
  //Entrada
  stdout.writeln("Ingrese su edad");
  edad =int.parse(stdin.readLineSync()!);
  //Proceso y salida
  if(edad>=18){
    stdout.write("Usted es mayor de edad");
  }else{
    stdout.write("Usted es menor de edad");
  }
}