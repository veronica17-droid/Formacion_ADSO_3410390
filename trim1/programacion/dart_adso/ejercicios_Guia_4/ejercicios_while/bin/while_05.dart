import "dart:io";

void main() {
  print("¿Cuántos alumnos hay en el grupo?:");
  int n = int.parse(stdin.readLineSync()!);
  double sumaCalificaciones = 0;

  for (int i = 1; i <= n; i++) {
    print("Ingrese la calificación del alumno $i:");
    double calificacion = double.parse(stdin.readLineSync()!);
    sumaCalificaciones = sumaCalificaciones + calificacion;
  }
  double promedio = sumaCalificaciones / n;
  
  print("El promedio final del grupo es: $promedio");
}