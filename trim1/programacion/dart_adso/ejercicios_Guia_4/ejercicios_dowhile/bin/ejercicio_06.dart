import "dart:io";

void main() {
  int continuar;
  double mayorPromedio = -1.0; 
  String numeroControlMayor = "";

  do {
    print("\nIngrese el número de control del alumno:");
    String numControl = stdin.readLineSync()!;

    double sumaCalificaciones = 0;
    int unidad = 1;
 
    do {
      print("Ingrese la calificación de la unidad $unidad:");
      double nota = double.parse(stdin.readLineSync()!);
      sumaCalificaciones = sumaCalificaciones + nota;
      unidad++;
    } while (unidad <= 5);

    double promedioAlumno = sumaCalificaciones / 5;
    print("El promedio de este alumno es: $promedioAlumno");

    if (promedioAlumno > mayorPromedio) {
      mayorPromedio = promedioAlumno;
      numeroControlMayor = numControl;
    }

    print("\n¿Desea registrar otro alumno? (1: Sí / 2: No):");
    continuar = int.parse(stdin.readLineSync()!);

  } while (continuar == 1);
  print("El alumno con mayor promedio es el de Número de Control: $numeroControlMayor");
  print("Su promedio obtenido fue: $mayorPromedio");
}