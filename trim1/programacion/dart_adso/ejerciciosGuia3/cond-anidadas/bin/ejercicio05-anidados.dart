//EJERCICIO 5
import 'dart:io';

void main(List<String> args) {
  //DEFINICION DE VARIABLES
  double kilo = 1300;
  double kilosComprados, pago, descuento;
  //ENTRADA
  stdout.write("Ingrese el número de kilos comprados");
  kilosComprados = double.parse(stdin.readLineSync()!);
  //PROCESO
  pago = kilosComprados * kilo;
  if (kilosComprados > 0 && kilosComprados <= 2) {
    stdout.write("No tiene descuento, su total es de \$$pago");
  } else if (kilosComprados >= 2.01 && kilosComprados <= 5) {
    descuento = pago * 0.10;
    pago = pago - descuento;
    stdout.write("Tiene descuento de 10%, su total es de \$$pago");
  } else if (kilosComprados >= 5.01 && kilosComprados <= 10) {
    descuento = pago * 0.15;
    pago = pago - descuento;
    stdout.write("Tiene descuento de 15%, su total es de \$$pago");
  } else {
    descuento = pago * 0.20;
    pago = pago - descuento;
    stdout.write("Tiene descuento de 20%, su total es de \$$pago");
  }
}
