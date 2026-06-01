import 'dart:io';

void main(List<String> args) {
  //DEFINICIÓN DE VARIABLES
  print("--Gestión de auxilios de transporte CPIC--");
  String nombre, municipio;
  double auxilioBase, totalRecibir, diasAsistencia;
  //ENTRADA
  stdout.writeln("Cuál es su nombre?");
  nombre = stdin.readLineSync() ?? "";
  stdout.writeln("En que municipio vive?");
  municipio = stdin.readLineSync()!.trim().toLowerCase();
  stdout.writeln("Ingrese la cantidad de días de asistencia");
  diasAsistencia = double.parse(stdin.readLineSync()!);
  //PROCESO
  auxilioBase = diasAsistencia * 5000;
  totalRecibir = auxilioBase;
  if (municipio != "manizales") {
    double extra = totalRecibir * 0.15;
    totalRecibir = auxilioBase + extra;
  }
  stdout.write("Su nombre es $nombre y el total a recibir es: $totalRecibir");
}
