import 'dart:io';

void main(List<String> args) {
  //DEFINCION DE VARIABLES
  int tipo;
  double hectareas, precioPorHectarea = 0, subtotal, excedente = 0, descuentoExcedente = 0, totalFinal;
  String? nombre;

  //ENTRADA
  stdout.writeln("Ingrese su nombre");
  nombre = stdin.readLineSync();
  stdout.writeln("¿A qué tipo de fumigación pertenece usted?");
  tipo = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese la cantidad de hectáreas a fumigar");
  hectareas = double.parse(stdin.readLineSync()!);

  //PROCESO
  switch (tipo) {
    case 1:
      precioPorHectarea = 50000;
      subtotal = hectareas * precioPorHectarea;
      if (hectareas > 100) {
        subtotal = subtotal * 0.95;
      }
      if (subtotal > 1000000) {
        excedente = subtotal - 1000000;
        descuentoExcedente = excedente * 0.10;
      }
      totalFinal = subtotal - descuentoExcedente;
      stdout.write("Granjero: $nombre\n");
      stdout.write("Cuenta total: \$$totalFinal\n");
      break;
    case 2:
      precioPorHectarea = 70000;
      subtotal = hectareas * precioPorHectarea;
      if (hectareas > 100) {
        subtotal = subtotal * 0.95;
      }
      if (subtotal > 1000000) {
        excedente = subtotal - 1000000;
        descuentoExcedente = excedente * 0.10;
      }
      totalFinal = subtotal - descuentoExcedente;
      stdout.write("Granjero: $nombre\n");
      stdout.write("Cuenta total: \$$totalFinal\n");
      break;
    case 3:
      precioPorHectarea = 80000;
      subtotal = hectareas * precioPorHectarea;
      if (hectareas > 100) {
        subtotal = subtotal * 0.95;
      }
      if (subtotal > 1000000) {
        excedente = subtotal - 1000000;
        descuentoExcedente = excedente * 0.10;
      }
      totalFinal = subtotal - descuentoExcedente;
      stdout.write("Granjero: $nombre\n");
      stdout.write("Cuenta total: \$$totalFinal\n");
      break;
    case 4:
      precioPorHectarea = 190000;
      subtotal = hectareas * precioPorHectarea;
      if (hectareas > 100) {
        subtotal = subtotal * 0.95;
      }
      if (subtotal > 1000000) {
        excedente = subtotal - 1000000;
        descuentoExcedente = excedente * 0.10;
      }
      totalFinal = subtotal - descuentoExcedente;
      stdout.write("Granjero: $nombre\n");
      stdout.write("Cuenta total: \$$totalFinal\n");
      break;
    default:
      stdout.write("Ingrese un tipo de fumigación válido");
  }
}