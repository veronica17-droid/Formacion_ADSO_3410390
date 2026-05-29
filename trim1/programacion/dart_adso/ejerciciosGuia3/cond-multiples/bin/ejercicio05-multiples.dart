import 'dart:io';

void main(List<String> args) {

  //DEFINICIÓN DE VARIABLES
  int clave, minutos;
  double totalAPagar;

  //ENTRADA
  stdout.writeln(
    'Ingrese la clave de la zona destino (12, 15, 18, 19, 23, 25, 29)',
  );
  clave = int.parse(stdin.readLineSync()!);

  stdout.writeln('Ingrese la cantidad de minutos hablados');
  minutos = int.parse(stdin.readLineSync()!);

  //PROCESO
  totalAPagar = 0;
  switch (clave) {
    case 12:
      totalAPagar = minutos * 200;
      break;
    case 15:
      totalAPagar = minutos * 220;
      break;
    case 18:
      totalAPagar = minutos * 450;
      break;
    case 19:
      totalAPagar = minutos * 350;
      break;
    case 23:
      totalAPagar = minutos * 600;
      break;
    case 25:
      totalAPagar = minutos * 600;
      break;
    case 29:
      totalAPagar = minutos * 500;
      break;
    default:
      stdout.writeln('Clave de zona no válida');
      return;
  }

  //SALIDA
  stdout.writeln(
    'Para la clave de zona: $clave y $minutos minutos hablados, el total a pagar es de \$$totalAPagar',
  );
}