import 'dart:io';

void main(List<String> args) {
  /*
  Se realiza la convocatoria para estudiar el programa
  ADSO en el CPIC. Del total de aspirantes se desea
  saber cuantos son hombres, y cuantos mujeres mayores de edad.
   */
  int cantMujeres = 0;
  int cantHombres = 0;
  int mayoresEdad = 0;
  int cantAprendices = 0;
  int edad;

  stdout.writeln("Cuántos aprendices hay");
  cantAprendices = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantAprendices; i++) {
    stdout.writeln("Cuál es la edad del aspirante ${i + 1}");
    edad = int.parse(stdin.readLineSync()!);
    stdout.writeln(
      "Cuál es el genero del aspirante ${i + 1}: (1.Mujer  2.Hombre)",
    );
    int genero = int.parse(stdin.readLineSync()!);

    if (genero == 1 && edad >= 18) {
      cantMujeres++;
      mayoresEdad++;
    } else if (genero == 2) {
      cantHombres++;
    } else {
      stdout.writeln("Ingrese un genero valido");
    }
  }
  stdout.writeln("Hay $cantHombres hombres");
  stdout.writeln(
    "Hay $cantMujeres mujeres de las cuales $mayoresEdad son mayores de edad",
  );
}
