import 'dart:io';

void main(List<String> args) {
  /*Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave es 2 el descuento en del 20% (solo existen dos claves). */
  //DEFINICION DE VARIABLES
  String nombre;
  int clave;
  double preciOriginal, descuento, precioConDescuento;

  //ENTRADA
  stdout.writeln("Ingrese el nombre del articulo");
  nombre = stdin.readLineSync()!;
  stdout.writeln("Ingrese la clave del articulo");
  clave = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el precio del articulo");
  preciOriginal = double.parse(stdin.readLineSync()!);

  //PROCESO Y SALIDA
  if (clave == 2) {
    descuento = preciOriginal * 0.20;
    precioConDescuento = preciOriginal - descuento;
    stdout.write(
      "El nombre del producto es $nombre, y su clave es $clave, por lo tanto tiene un descuento de $descuento, entonces paga \$$precioConDescuento",
    );
  }
  if (clave == 1) {
    descuento = preciOriginal * 0.10;
    precioConDescuento = preciOriginal - descuento;
    stdout.write(
      "El nombre del producto es $nombre, y su clave es $clave, por lo tanto tiene un descuento de $descuento, entonces paga \$$precioConDescuento",
    );
  }
}
