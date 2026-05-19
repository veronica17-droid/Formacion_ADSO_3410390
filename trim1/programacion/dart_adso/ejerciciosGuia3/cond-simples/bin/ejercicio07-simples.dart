import 'dart:io';

void main(List<String> args) {
  /*Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50 000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50 000 la cuota a pagar será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente. */

  //DEFINICION DE VARIABLES
  double monto, montoAPagar;

  //ENTRADA
  stdout.writeln("Ingrese el monto");
  monto = double.parse(stdin.readLineSync()!);

  //PROCESO Y SALIDA
  montoAPagar = monto * 0.02;
  if(monto<50000){
    montoAPagar = monto * 0.03;
  }
  stdout.writeln("El monto a pagar es \$$montoAPagar");
}