import 'dart:io';

void main(List<String> args) {
  double valorVehiculo, impuestoAnual, porcentajeImpuesto, tarifa;
  String marca;
  int modelo;

  stdout.writeln("Ingrese la marca del vehiculo");
  marca = stdin.readLineSync() ?? "";
  stdout.writeln("Ingrese el modelo del vehiculo");
  modelo = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el avalúo del vehiculo");
  valorVehiculo = double.parse(stdin.readLineSync()!);

  if (valorVehiculo > 150000000) {
    tarifa = 2.5;
    porcentajeImpuesto = valorVehiculo * 0.025;
  } else {
    tarifa = 2.5;
    porcentajeImpuesto = valorVehiculo * 0.015;
  }
    impuestoAnual = valorVehiculo + porcentajeImpuesto;
    stdout.write("El modelo es $modelo y la marca $marca");
    stdout.write("La tarifa aplicada es de $tarifa");
    stdout.write("El impuesto es de $porcentajeImpuesto");
    stdout.write("El total a pagar de impuesto anual es: $impuestoAnual");
}
