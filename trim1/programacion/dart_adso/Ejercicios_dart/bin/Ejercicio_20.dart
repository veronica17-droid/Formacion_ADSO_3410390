/*20. Pedir una calificación alfabética (A, B, C, D) y mostrar su equivalente numérico o
descripción: A (Excelente), B (Bueno), C (Regular), D (Deficiente).*/
//Angie Verónica Carvajal Cardona
import 'dart:io';

void main(List<String> args) {
  //Definición de variables
  String calificacion;
  //Entrada
  stdout.writeln("Ingrese su calificación (A, B, C, D)");
  calificacion = (stdin.readLineSync()!);
  //Proceso y Salida
  switch (calificacion) {
    case 'A':
      print("A (Excelente)");
      break;
    case 'B':
      print("B (Bueno)");
      break;
    case 'C':
      print("C (Regular)");
      break;
    case 'D':
      print("D (Deficiente)");
      break;
    default:
      print("Calificación no válida. Por favor ingrese A, B, C o D.");
  }
}
