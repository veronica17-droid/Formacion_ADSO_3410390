/*5. Un cliente ordena cierta cantidad de brochas de cerda y rodillos; las brochas de cerda tienen un 20% de descuento y los rodillos un 15% de descuento. Los datos que se tienen por cada tipo de artículo son: la cantidad pedida y el precio unitario. Además, si se paga de contado todo tiene un descuento del 7%. Elaborar un programa que calcule y muestre en pantalla el costo total de la orden, tanto para el pago de contado como para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el usuario ingresa 2. */
import 'dart:io';

void main(List<String> args) {
  //DEFINICION DE VARIABLES
  int cantidadRodillos, cantidadBrochas, tipoPago;
  double precioRodillos = 10000, precioBrochas =5000, pagoRodillos, pagoBrochas;
  //ENTRADA
  stdout.writeln("¿Cuántos rodillos compró?");
  cantidadRodillos = int.parse(stdin.readLineSync()!);
  stdout.writeln("¿Cuántas brochas compró?");
  cantidadBrochas = int.parse(stdin.readLineSync()!);
  stdout.writeln("¿Qué metodo de pago desea usar? 1. Pago contado  2. Pago crédito");
  tipoPago = int.parse(stdin.readLineSync()!);
  //PROCESO
  if(tipoPago == 1){
    pagoRodillos = (precioRodillos * cantidadRodillos) - (precioRodillos * 0.20);
    pagoBrochas = (precioBrochas* cantidadBrochas) - (precioBrochas * 0.15);
    double descuento = (pagoRodillos + pagoBrochas) * 0.7;
    double pagoTotal = (pagoRodillos + pagoBrochas) - descuento;
    stdout.write("El precio total que debe pagar es \$$pagoTotal, gracias a que pagó de contado tiene un descuento de 7%");
  }else{
    pagoRodillos = (precioRodillos * cantidadRodillos) - (precioRodillos * 0.20);
    pagoBrochas = (precioBrochas* cantidadBrochas) - (precioBrochas * 0.15);
    double pagoTotal = (pagoRodillos + pagoBrochas);
    stdout.write("El precio total que debe pagar es \$$pagoTotal");
  }
}