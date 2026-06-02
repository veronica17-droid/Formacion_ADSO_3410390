import 'dart:io';

void main(List<String> args) {
  String metodoPago;
  double valorVehiculo;
  double precioTotal, descuento, plazo, interes;

  stdout.writeln("Qué metodo de pagó desea usar? (contado o credito)");
  metodoPago = stdin.readLineSync()!.trim().toLowerCase();

  stdout.writeln("Cuál es el valor del vehículo?");
  valorVehiculo = double.parse(stdin.readLineSync()!);

  if (metodoPago == "contado") {
    if (valorVehiculo > 110000000) {
      descuento = valorVehiculo * 0.05;
    } else {
      descuento = valorVehiculo * 0.02;
    }
    precioTotal = valorVehiculo - descuento;
    stdout.write("El vehículo se compra de contado y su valor es de $precioTotal");

  } else if (metodoPago == "credito") {
    stdout.writeln("A cuántos meses es el plazo?");
    plazo = double.parse(stdin.readLineSync()!);
    if (plazo > 60) {
      interes = valorVehiculo * 0.015 * plazo;
    } else {
      interes = valorVehiculo * 0.012 * plazo;
    } 
      precioTotal = valorVehiculo + interes;
      stdout.write(
        "El vehículo se compra a credito y su valor es de $precioTotal",
      );
  }
}
