import "dart:io";

void main() {
  print("¿Cuántos alumnos hay en el grupo en total?:");
  int n = int.parse(stdin.readLineSync()!);
  int sumaEdadesHombres = 0, sumaEdadesMujeres = 0;
  int sumaEdadesGlobal = 0;
  int totalHombres = 0, totalMujeres = 0;
  for (int i = 1; i <= n; i++) {
    print("\n--- Datos del alumno $i ---");
    
    print("Ingrese la edad:");
    int edad = int.parse(stdin.readLineSync()!);

    print("Ingrese el género (1 para Hombre, 2 para Mujer):");
    int genero = int.parse(stdin.readLineSync()!);

    sumaEdadesGlobal = sumaEdadesGlobal + edad;

    if (genero == 1) {
      sumaEdadesHombres = sumaEdadesHombres + edad;
      totalHombres++;
    } else if (genero == 2) {
      sumaEdadesMujeres = sumaEdadesMujeres + edad;
      totalMujeres++;
    } else {
      print("Género no válido. Esta edad solo se contará en el promedio global.");
    }
  }

}