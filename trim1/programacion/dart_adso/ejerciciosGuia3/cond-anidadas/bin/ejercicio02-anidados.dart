/*2. Dado el monto de una compra calcular el descuento considerado
• Descuento es 20% si el monto es mayor a 20000 pesos.
• Descuento es 10% si el monto es mayor a 10000 pesos y menor o igual a 20000 pesos.
• no hay descuento si el monto es menor o igual a 10000 pesos*/
import 'dart:io';

void main(List<String> args) {
  //DEFINCION DE VARIABLES
  double montoCompra, descuento, precioTotal;
  //ENTRADA
  stdout.writeln("Ingrese el monto de su compra");
  montoCompra = double.parse(stdin.readLineSync()!);
  //PROCESO
  if (montoCompra > 20000) {
    descuento = montoCompra * 0.20;
    precioTotal = montoCompra - descuento;
    stdout.write("Debe pagar $precioTotal");
  } else {
    if (montoCompra > 10000) {
      if (montoCompra <= 20000) {
        descuento = montoCompra * 0.10;
        precioTotal = montoCompra - descuento;
        stdout.write("Debe pagar $precioTotal");
      }
    } else {
      stdout.write("NO HAY DESCUENTO");
    }
  }
}
