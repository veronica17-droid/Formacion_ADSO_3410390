/*
5. Un inquilino ha llegado a un acuerdo para no incurrir en mora, realizando abonos parciales mensuales a una deuda 
pendiente de arrendamiento. Escribe un programa que simule el registro de abonos que se preguntarán al usuario para saldar
una deuda inicial de 500,000 pesos usando un bucle while, hasta que el saldo quede exactamente en cero.
 */

import 'dart:io';

void main(List<String> args) {
  double abonos;
  double saldo = 500000;
  double saldoabonado = 0;

  while (saldoabonado < saldo) {
    print("Cuánto dinero va a abonar?");
    abonos = double.parse(stdin.readLineSync()!);
    while (abonos < 0) {
      print("El abono no puede ser negativo");
      print("Ingrese de nuevo el abono");
      abonos = double.parse(stdin.readLineSync()!);
    }
    saldoabonado += abonos;
    
    if (saldoabonado == saldo) {
      print("Pagó la totalidad de su deuda");
    }else{
      print("Pagó \$$abonos, aún le quedan \$${(saldo - saldoabonado)} por pagar");
    }

  }
}