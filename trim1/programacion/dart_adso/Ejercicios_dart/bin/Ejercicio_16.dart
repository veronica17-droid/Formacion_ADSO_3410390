/*• 16. Un gimnasio ofrece un descuento del 20% si el cliente paga la anualidad
completa (monto > 500.000), de lo contrario el descuento es del 5%. Calcular el
total a pagar.*/
//Angie veronica carvajal cardona
import 'dart:io';

void main(List<String> args) {
  //Definicion de variables
  double pagoInicial, pagoTotal, descuento;
  //Entrada
  stdout.writeln("¿Cuánto paga?");
  pagoInicial = double.parse(stdin.readLineSync()!);
  //Proceso y Salida
  if(pagoInicial > 500000){
    descuento = pagoInicial * 0.2; 
    pagoTotal= pagoInicial - descuento;
    stdout.write("Usted paga $pagoInicial(la anualidad), por lo tato tiene un descuento de 20% y debe pagar $pagoTotal");
  }else{
    descuento = pagoInicial * 0.05;
    pagoTotal = pagoInicial -descuento;
    stdout.write("Usted paga $pagoInicial(No paga la anualidad), por lo taanto tiene un descuento de 5%, debe pagar $pagoTotal");
  }
}