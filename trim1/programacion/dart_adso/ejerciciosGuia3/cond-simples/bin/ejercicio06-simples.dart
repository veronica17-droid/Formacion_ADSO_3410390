import 'dart:io';

void main(List<String> args) {
  /*En un supermercado se hace una promoción, mediante la cual el cliente obtiene un descuento dependiendo de un número que se escoge al azar. Si el numero escogido es menor que 74 el descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%. Obtener cuánto dinero se le descuenta. */
  //DEFINICION DE VARIABLES
  int numero;
  double precio, descuento;

  //ENTRADA
  stdout.writeln("Ingrese el precio de su producto");
  precio = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese un número al azar");
  numero = int.parse(stdin.readLineSync()!);

  //PROCESO Y SALIDA
  descuento = precio * 0.20;

  if(numero<74){
    descuento = precio * 0.15  ;
    precio = precio - descuento;
  }
  stdout.writeln("El dinero que se le descuenta por su compra es $descuento");
}