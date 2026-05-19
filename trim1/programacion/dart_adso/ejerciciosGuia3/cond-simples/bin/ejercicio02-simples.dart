import 'dart:io';

void main(List<String> args) {
  /*La compañía de seguros de vida atlas se va a cambiar de domicilio y por lo tanto pone en venta su terreno pero no tiene una idea del valor del terreno, entonces solicita al departamento de sistemas que le desarrolle un algoritmo con la finalidad de que calcule e imprima el precio del terreno del cual se tiene los siguientes datos: largo, ancho y precio por metro cuadrado, si el terreno tiene más de 400 metros cuadrados se hace un descuento del 10%. */
  //DEFINICION DE VARIABLES
  double largo, ancho, precioMetros, medidaTerreno, precioTerreno, descuento;
  
  //ENTRADA
  stdout.writeln("Ingrese el largo de su terreno");
  largo = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el ancho de su terreno");
  ancho = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el precio por metro cuadrado");
  precioMetros = double.parse(stdin.readLineSync()!);

  //PROCESO Y SALIDA
  medidaTerreno = largo * ancho;
  precioTerreno = medidaTerreno * precioMetros;
  if(medidaTerreno>400){
    descuento = (precioTerreno*0.10);
    precioTerreno = precioTerreno - descuento;
    stdout.writeln("Tiene un descuento de 10%");
  }
  stdout.writeln("Su terreno tiene $medidaTerreno metros, por lo tanto debe pagar $precioTerreno");
}