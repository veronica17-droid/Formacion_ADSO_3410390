/*3. Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se aplica un descuento del 20%  sobre el total de la compra y si son menos de tres camisas un descuento del 10% */
import 'dart:io';

void main(List<String> args) {
  //DEFINICION DE VARIABLES
  double totalCompra, cantidadCamisas, descuento, totalPagar;
  //ENTRADA
  stdout.writeln("Ingrese la cantidad de camisas que compró");
  cantidadCamisas = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el total de la compra");
  totalCompra = double.parse(stdin.readLineSync()!);
  //PROCESO
  if (cantidadCamisas >= 3) {
    descuento = totalCompra * 0.20;
    totalPagar = totalCompra - descuento;
    stdout.writeln(  "Usted compró $cantidadCamisas camisas, por lo tanto obtiene un descuento del 20%, debe pagar \$$totalPagar");
  } else {
    descuento = totalCompra *0.10;
    totalPagar = totalCompra - descuento;
    stdout.writeln("Usted compró $cantidadCamisas camisas, por lo tanto obtiene un descuento del 10%, debe pagar \$$totalPagar",);
  }
}
