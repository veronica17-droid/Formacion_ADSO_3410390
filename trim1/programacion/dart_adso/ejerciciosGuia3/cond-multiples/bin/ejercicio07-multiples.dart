import 'dart:io';

void main(List<String> args) {
  /*7. El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el
país destino, y del número de minutos hablados.
En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una
clave. Construya la solución para calcular e imprimir el costo de una llamada dada la clave y la
duración de la llamada.*/

  //DEFINICIÓN DE VARIABLES
  int clave, duracion;
  double precioPrimerosMinutos, precioMinutosAdicionales, costoTotal;

  //ENTRADA
  stdout.writeln('Ingrese la clave de la zona destino:');
  clave = int.parse(stdin.readLineSync()!);

  stdout.writeln('Ingrese la duración de la llamada en minutos:');
  duracion = int.parse(stdin.readLineSync()!);

  //PROCESO
  precioPrimerosMinutos = 0;
  precioMinutosAdicionales = 0;

  switch (clave) {
    case 12:
      precioPrimerosMinutos = 200;
      precioMinutosAdicionales = 150;
      break;
    case 15:
      precioPrimerosMinutos = 220;
      precioMinutosAdicionales = 180;
      break;
    case 18:
      precioPrimerosMinutos = 450;
      precioMinutosAdicionales = 350;
      break;
    case 19:
      precioPrimerosMinutos = 350;
      precioMinutosAdicionales = 270;
      break;
    case 23:
      precioPrimerosMinutos = 600;
      precioMinutosAdicionales = 460;
      break;
    case 25:
      precioPrimerosMinutos = 600;
      precioMinutosAdicionales = 460;
      break;
    case 29:
      precioPrimerosMinutos = 500;
      precioMinutosAdicionales = 390;
      break;
    default:
      stdout.writeln('Clave de zona no válida');
      return;
  }

  if (duracion <= 3) {
    costoTotal = duracion * precioPrimerosMinutos;
  } else {
    costoTotal = (3 * precioPrimerosMinutos) + ((duracion - 3) * precioMinutosAdicionales);
  }

  //SALIDA
  stdout.writeln('El costo total de la llamada es: \$$costoTotal');
}