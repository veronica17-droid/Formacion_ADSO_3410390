import 'dart:io';

void main(List<String> args) {
  /*VARIABLES TIPO ACUMULADOR
  Se desea registrar los puntos que se ganan en cada partido,
  teniendo en cuenta que el máximo puntaje es 10 por partido
  Mostrar al final el total d epuntos acumulados y el promedio
  de puntos.
   */
  int puntos, puntosAcum = 0;
  double promedio;
  int totalPartidos = 10;
  for(int i = 1; i<=totalPartidos; i++){
    stdout.writeln("Cuál fue el puntaje del partido $i");
    puntos = int.parse(stdin.readLineSync()!);
    puntosAcum = puntosAcum + puntos;
    //puntosAcum += puntos;
  }
  promedio = puntosAcum / totalPartidos;
  print("El total de puntos es $puntosAcum ");
  print("El promedio es $promedio");
}