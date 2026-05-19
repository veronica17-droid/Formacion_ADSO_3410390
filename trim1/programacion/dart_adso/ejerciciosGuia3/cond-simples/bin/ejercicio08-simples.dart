import 'dart:io';

void main(List<String> args) {
  /* Dada la duración en minutos de una llamada calcular el costo, considerando: • Hasta tres minutos el costo es 600 • Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros. */

  // DEFINICIÓN DE VARIABLES
  int duracionMinutos, minutosAdicionales;
  double costoTotal;

  // ENTRADA
  stdout.writeln("Ingrese la duración de la llamada en minutos:");
  duracionMinutos = int.parse(stdin.readLineSync()!);

  //PROCESO
  costoTotal = 600;

  if (duracionMinutos > 3) {
    minutosAdicionales = duracionMinutos - 3;
    costoTotal = 600 + (minutosAdicionales * 150);
  }

  // SALIDA
  stdout.writeln("El costo total de la llamada es de \$$costoTotal pesos.");
}