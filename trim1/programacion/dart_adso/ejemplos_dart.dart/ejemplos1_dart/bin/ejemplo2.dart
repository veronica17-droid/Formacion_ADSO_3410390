import 'dart:io';

void main(List<String> args) {
  
  int edad;
  String? diaSemana;
  print("Ingrese la edad de la persona: ");
  edad = int.parse(stdin.readLineSync()!);
  print("Ingrese el día de la semana: ");
  diaSemana = stdin.readLineSync()!;

  //CONDICIONAL
  if (diaSemana == "Lunes") {
    print("Todos hacen el aseo");
  }
  if (edad >= 18) {
    print("Usted es mayor de edad");
  }
  else {
  print("usted es menor de edad");
  }
}