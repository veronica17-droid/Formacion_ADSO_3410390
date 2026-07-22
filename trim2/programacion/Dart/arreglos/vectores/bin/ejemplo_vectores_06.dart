/*
El CPIC desea registrar la información de N aprendices. 
Para cada aprendiz se debe almacenar su código de matrícula, 
su nota final y su porcentaje de asistencia utilizando arreglos 
independientes (paralelos). Desarrollar una aplicación que determine e 
imprima:La lista de aprendices que aprobaron (nota mayor o igual a 3.0 y 
asistencia mayor o igual al 80%).El código y la nota del aprendiz con el promedio 
más alto del grupo.
Nota: se debe declarar un arreglo de cadenas para el código, 
un arreglo de reales para la nota final y un arreglo de enteros/reales para el 
porcentaje de asistencia.
 */

import 'dart:io';

void main(List<String> args) {
  List<int> codigoMatriculaLista = [];
  List<double> notaFinalLista = [];
  List<double> porcentajeAsistenciaLista = [];
  List<String> nombresAprendicesLista = [];
  List<String> aprendicesAprobados = [];
  List<double> mayorNota = [];
  List<double> mayorAsistencia = [];
  List<String> estudiantesAprobados = [];

  print("Ingrese el número de aprendices");
  int numeroAprendices = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < numeroAprendices; i++) {
    print("Ingrese el nombre del aprendiz ${i + 1}");
    String nombresAprendices = stdin.readLineSync()!;
    nombresAprendicesLista.add(nombresAprendices);
    print("Ingrese el codigo de matricula del aprendiz ${i + 1}");
    int codigoMatricula = int.parse(stdin.readLineSync()!);
    codigoMatriculaLista.add(codigoMatricula);
    print("Ingrese la nota final aprendiz ${i + 1}");
    double notaFinal = double.parse(stdin.readLineSync()!);
    notaFinalLista.add(notaFinal);
    print("Ingrese el porcentaje de asistencia del aprendiz ${i + 1}");
    double porcentajeAsistencia = double.parse(stdin.readLineSync()!);
    porcentajeAsistenciaLista.add(porcentajeAsistencia);

    // Quienes aprobaron
    if (notaFinalLista[i] > 3.0 && porcentajeAsistenciaLista[i] > 80) {
      int aprendicesAprobados = 0;
      aprendicesAprobados++;
      mayorNota.add(notaFinal);
      mayorAsistencia.add(porcentajeAsistencia);
      estudiantesAprobados.add(nombresAprendices[i]);
    }
  }
  print("$codigoMatriculaLista $notaFinalLista $porcentajeAsistenciaLista");
  print("$mayorNota, $mayorAsistencia");
  print("La lista de estudiantes que aprobaron es: $estudiantesAprobados[i]");
}
