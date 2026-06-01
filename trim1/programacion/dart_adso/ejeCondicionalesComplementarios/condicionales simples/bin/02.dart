import 'dart:io';

void main(List<String> args) {
  double kilosRecolectados, porcentajeImpureza, precioKilo;
  double pagoBase, pagoFinal, bono;

  stdout.writeln("Ingrese la cantidad de kilos recolectados");
  kilosRecolectados = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el precio del kilo");
  precioKilo = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el porcentaje a nivel de impureza");
  porcentajeImpureza = double.parse(stdin.readLineSync()!);

  pagoBase = precioKilo * kilosRecolectados;
  pagoFinal = pagoBase;
  
  if(kilosRecolectados > 50 && porcentajeImpureza < 5){
    bono = pagoBase * 0.10;
    pagoFinal = pagoBase + bono;
  }
  stdout.write("Para los $kilosRecolectados kilos recolectados, el pago es de $pagoFinal");
}