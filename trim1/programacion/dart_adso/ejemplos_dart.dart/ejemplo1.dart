import 'dart:io';

void main(List<String> args) {
  //Definicion de variables 
double precio, descuento, totalPagar;
int cantidad;

  //ENTRADA DE DATOS
stdout.writeln("Ingrese el precio del producto: ");
precio = double.parse(stdin.readLineSync()!);

stdout.writeln("Ingrese la cantidad del producto: ");
cantidad = int.parse(stdin.readLineSync()!);

totalPagar = precio * cantidad;

  //PROCESO DEL DESCUENTO
descuento = totalPagar * 0.15; //Descuento del 15%
totalPagar = totalPagar - descuento; //Total a pagar con descuento

  //SALIDA DE DATOS
stdout.writeln("El total a pagar es: $totalPagar");

}