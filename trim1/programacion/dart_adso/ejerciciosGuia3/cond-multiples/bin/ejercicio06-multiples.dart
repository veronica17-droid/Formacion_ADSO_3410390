import 'dart:io';

void main(List<String> args) {
  //DEFINCION DE VARIABLES
  int anio, dias;
  String? mes, nombre;

  //ENTRADA
  stdout.writeln("Ingrese su nombre");
  nombre = stdin.readLineSync();
  stdout.writeln("Ingrese el nombre del mes (ej: enero, febrero...)");
  mes = stdin.readLineSync()?.toLowerCase().trim();
  stdout.writeln("Ingrese el año");
  anio = int.parse(stdin.readLineSync()!);

  //PROCESO
  switch (mes) {
    case "enero":
    case "marzo":
    case "mayo":
    case "julio":
    case "agosto":
    case "octubre":
    case "diciembre":
      dias = 31;
      stdout.write("Usuario: $nombre\n");
      stdout.write("El mes de $mes del año $anio tiene $dias días.");
      break;
    case "abril":
    case "junio":
    case "septiembre":
    case "noviembre":
      dias = 30;
      stdout.write("Usuario: $nombre\n");
      stdout.write("El mes de $mes del año $anio tiene $dias días.");
      break;
    case "febrero":
      if ((anio % 4 == 0 && anio % 100 != 0) || (anio % 400 == 0)) {
        dias = 29;
      } else {
        dias = 28;
      }
      stdout.write("Usuario: $nombre\n");
      stdout.write("El mes de $mes (año bisiesto) del año $anio tiene $dias días.");
      break;
    default:
      stdout.write("Ingrese un nombre de mes válido");
  }
}