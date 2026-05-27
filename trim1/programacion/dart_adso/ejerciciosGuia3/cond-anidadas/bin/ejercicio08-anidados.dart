/*8. El jefe del departamento de construcción de la constructora Pagasa, desea que se le desarrolle un
programa para sus empleados, el cual calcule el sueldo de un empleado, de tal manera que el sueldo
se calculará de la siguiente manera: si el número de horas trabajadas es mayor a 40, el excedente
de 40 hrs. se paga al doble de la cuota por hora, en caso de no ser mayor a 40 hrs. se paga la cuota
normal por hora, si las horas exceden a 50 hrs. el excedente de 50 hrs. se paga al triple de la cuota
por hora. Se pedirá el nombre del empleado, el número de horas trabajadas y la cuota por hora.
mostrar en pantalla el nombre del empleado, el número de horas trabajadas y su sueldo.*/
import 'dart:io';

void main(List<String> args) {
  //DEFINICION DE VARIABLES
  String? nombre;
  double cuotaHora;
  double sueldoInicial, sueldoFinal;
  int horasTrabajadas;
  //ENTRADA
  stdout.writeln("Ingrese su nombre");
  nombre = stdin.readLineSync();
  stdout.writeln("Ingrese el número de horas trabajadas");
  horasTrabajadas = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese la cuota por hora");
  cuotaHora = double.parse(stdin.readLineSync()!);
  //PROCESO
  if (horasTrabajadas <= 50) {
    sueldoInicial = 40 * cuotaHora;
    int horasDobles = horasTrabajadas - 40;
    sueldoFinal = sueldoInicial + (2 * horasDobles * cuotaHora);
  } else if (horasTrabajadas <= 40) {
    sueldoFinal = horasTrabajadas * cuotaHora;
  } else {
    sueldoInicial = 50 * cuotaHora;
    int horasDobles = horasTrabajadas - 50;
    sueldoFinal = sueldoInicial + (3 * horasDobles * cuotaHora);
  }
  stdout.write(
    "Su nombre es $nombre, trabajó $horasTrabajadas horas, la cuota por hora es \$$cuotaHora y su sueldo es $sueldoFinal",
  );
}
