/*Pedir el precio de un producto y mostrar el valor del IVA (19%) y el precio total con
impuesto.*/

//Angie verónica carvajal cardona
import 'dart:io';
void main(List<String> args) {
  //Declaración de variables
  double precio, iva, valorIva, precioTotal;
  //Entrada
  stdout.writeln("Ingrese el precio del producto");
  precio = double.parse(stdin.readLineSync()!);
  //proceso
  iva = 0.19;
  valorIva = precio * iva;   
  precioTotal = precio + valorIva;      
  //Salida
  print("El valor del IVA es $iva, por lo tanto su precio total es $precioTotal");
}