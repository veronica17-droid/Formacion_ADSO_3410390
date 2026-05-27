//EJERCICIO 9
import 'dart:io';

void main(List<String> args) {
  //DEFINICION DE VARIABLES
  double nivelHemoglobina, edad;
  String? sexo;
  double minHemo = 0, maxHemo = 0; 
  String resultado = "";

  //ENTRADA DE DATOS
  stdout.writeln("Ingrese la edad en años");
  edad = double.parse(stdin.readLineSync()!);
  stdout.writeln("¿Cuál es su nivel de hemoglobina (g%)?");
  nivelHemoglobina = double.parse(stdin.readLineSync()!);
  stdout.writeln("¿Cuál es su sexo?");
  sexo = stdin.readLineSync();
  // PROCESO
  if (edad >= 0 && edad <= 0.083) { 
    minHemo = 13;
    maxHemo = 26;
  } else if (edad > 0.083 && edad <= 0.5) { 
    minHemo = 10;
    maxHemo = 18;
  } else if (edad > 0.5 && edad <= 1) { 
    minHemo = 11;
    maxHemo = 15;
  } else if (edad > 1 && edad <= 5) { 
    minHemo = 11.5;
    maxHemo = 15;
  } else if (edad > 5 && edad <= 10) { 
    minHemo = 12.6;
    maxHemo = 15.5;
  } else if (edad > 10 && edad <= 15) { 
    minHemo = 13;
    maxHemo = 15.5;
  } else if (edad > 15) { 
    if (sexo == "M" || sexo == "MUJER") {
      minHemo = 12;
      maxHemo = 16;
    } else {
      minHemo = 14;
      maxHemo = 18;
    }
  }
  if (nivelHemoglobina < minHemo) {
    resultado = "Anemia";
  } else if (nivelHemoglobina >= minHemo && nivelHemoglobina <= maxHemo) {
    resultado = "Normal";
  } else {
    resultado = "Cardiopatía";
  }
// SALIDA
  stdout.writeln("Tiene $edad años");
  stdout.writeln("Su niivel de Hemoglobina es $nivelHemoglobina g%");
  stdout.writeln("Rango ideal para su grupo: $minHemo - $maxHemo g%");
  stdout.writeln("El paciente presenta un estado de: $resultado");
}
