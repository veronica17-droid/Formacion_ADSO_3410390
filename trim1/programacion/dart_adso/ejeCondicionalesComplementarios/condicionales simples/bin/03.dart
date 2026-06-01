import 'dart:io';

void main(List<String> args) {
  double cantidadClases, subtotal;

  stdout.writeln("Ingrese la cantidad de clases a las que asistió");
  cantidadClases = double.parse(stdin.readLineSync()!);

  subtotal = 35000 * cantidadClases; 
  if(cantidadClases >= 4 && cantidadClases <=7){
    double descuento = subtotal * 0.10;
    subtotal = subtotal - descuento;
    stdout.writeln("Tiene un descuento de 10%");
  }
  if(cantidadClases >= 8){
    stdout.writeln("Tiene derecho a dos boletas para un concierto");
  }
  stdout.write("La cantidad a pagar por $cantidadClases clases es: $subtotal");
}