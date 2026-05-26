/*3. En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá del
número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10%
de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a cinco
pero menos de diez se le otorga un 20% de descuento; y si son 10 o más se les da un 40% de
descuento. El precio de cada computadora es de $1100000*/

import 'dart:io';

void main(List<String> args) {
  //DEFINICION DE VARIABLES
  double cantComputadores, descuento, totalCompra, totalPago;
  double precioComputador = 1100000;
  //ENTRADA
  stdout.writeln("Ingrese la cantidad de computadores que compró");
  cantComputadores = double.parse(stdin.readLineSync()!);
  totalCompra = cantComputadores * precioComputador;
  //PROCESO
  if (cantComputadores < 5) {
    descuento = totalCompra * 0.10;
    totalPago = totalCompra - descuento;
    stdout.writeln("Debe pagar $totalPago");
  } else if (cantComputadores >= 5 && cantComputadores < 10) {
    descuento = totalCompra * 0.20;
    totalPago = totalCompra - descuento;
    stdout.writeln("Debe pagar $totalPago");
  } else {
    descuento = totalCompra * 0.40;
    totalPago = totalCompra - descuento;
    stdout.writeln("Debe pagar $totalPago");
  }
}
