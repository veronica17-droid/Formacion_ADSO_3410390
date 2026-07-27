import 'dart:io';

void main(List<String> args) {
  
  List<String> codigoMatriculaLista = [];
  List<double> notaFinalLista = [];
  List<double> porcentajeAsistenciaLista = [];
  List<String> estudiantesAprobados = [];


  double mayorNota = -1.0;
  String codigoMayorNota = "";

  print("Ingrese el número de aprendices");
  int numeroAprendices = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < numeroAprendices; i++) {
    print("Ingrese el código de matrícula del aprendiz ${i + 1}");
    String codigoMatricula = stdin.readLineSync()!;
    codigoMatriculaLista.add(codigoMatricula);

    print("Ingrese la nota final del aprendiz ${i + 1}");
    double notaFinal = double.parse(stdin.readLineSync()!);
    notaFinalLista.add(notaFinal);

    print("Ingrese el porcentaje de asistencia del aprendiz ${i + 1}");
    double porcentajeAsistencia = double.parse(stdin.readLineSync()!);
    porcentajeAsistenciaLista.add(porcentajeAsistencia);

    
    if (notaFinal >= 3.0 && porcentajeAsistencia >= 80) {
      estudiantesAprobados.add(codigoMatricula);
    }

  
    if (notaFinal > mayorNota) {
      mayorNota = notaFinal;
      codigoMayorNota = codigoMatricula;
    }
  }

  print("La lista de aprendices que aprobaron es: $estudiantesAprobados");
  print("El aprendiz con el promedio más alto tiene el código: $codigoMayorNota y su nota es: $mayorNota");
}