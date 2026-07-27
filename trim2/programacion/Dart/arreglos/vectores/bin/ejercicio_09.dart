/*
Una agencia de seguros desea obtener un reporte al final del día de sus n empleados 
para determinar cuál fue el empleado que obtuvo el mayor sueldo en base a sus ventas y comisiones, 
se registrará el nombre del empleado la edad y el sueldo que obtuvo al final del día. 
Desarrollar un programa que pida al usuario el nombre de los n empleados, 
su edad y el sueldo para generar un reporte que lo muestre en pantalla de la siguiente manera: 
el nombre del empleado, edad, sueldo, el empleado con mayor sueldo, el sueldo del empleado que gana más y su edad. 
- Debe declarar un arreglo de enteros para la edad. 
- Debe declarar un arreglo de reales para el sueldo.
- Debe declarar un arreglo de cadena para el nombre 
 */
import 'dart:io';

void main(List<String> args) {
  String nombre;
  int edad;
  double sueldo;
  List<String> nombreLista = [];
  List<int> edadLista = [];
  List<double> sueldoLista = [];

  print("Ingrese el número de empleados:");
  int numeroEmpleados = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < numeroEmpleados; i++) {
    print("EMPLEADO ${i+1}");
    print("Ingrese el nombre");
    nombre = stdin.readLineSync()!;
    nombreLista.add(nombre);

    print("Ingrese su edad");
    edad = int.parse(stdin.readLineSync()!);
    edadLista.add(edad);

    print("Ingrese su sueldo");
    sueldo = double.parse(stdin.readLineSync()!);
    sueldoLista.add(sueldo);

  }

  if (numeroEmpleados > 0) {
    int indiceMayor = 0;
    double mayorSueldo = sueldoLista[0];

    for (var i = 1; i < numeroEmpleados; i++) {
      if (sueldoLista[i] > mayorSueldo) {
        mayorSueldo = sueldoLista[i];
        indiceMayor = i;
      }
    }
    print("REPORTE DE EMPLEADOS");
    for (var i = 0; i < numeroEmpleados; i++) {
      print("${nombreLista[i]} - ${edadLista[i]} años - \$${sueldoLista[i]}");
    }
    print("EMPLEADO CON MAYOR SUELDO");
    print("Nombre: ${nombreLista[indiceMayor]}");
    print("Edad: ${edadLista[indiceMayor]}");
    print("Sueldo: \$${sueldoLista[indiceMayor]}");
  }else {
    print("No se registraron empleados.");
  }
  
  

}