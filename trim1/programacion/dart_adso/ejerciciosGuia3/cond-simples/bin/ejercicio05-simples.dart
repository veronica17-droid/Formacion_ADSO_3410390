import 'dart:io';

void main(List<String> args) {
 /* Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000 si se compran menos de 5 llantas y de $70000 si se compran 5 o más. */
 //DEFINICION DE VARIABLES
  int cantidadLlantas;
  double precio;

  //ENTRADA
  stdout.writeln("Ingrese la cantidad de llantas de compró");
  cantidadLlantas = int.parse(stdin.readLineSync()!);

  //PROCESO Y SALIDA
  precio = cantidadLlantas * 70000;
  if(cantidadLlantas<5){
    precio = cantidadLlantas*80000;
  }
  stdout.write("Usted compró $cantidadLlantas llantas, por lo tanto debe pagar $precio");
}