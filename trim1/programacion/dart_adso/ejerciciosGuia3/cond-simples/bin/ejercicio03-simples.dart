
import 'dart:io';

void main(List<String> args) {
  /*El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al precio normal. */
  //DEFINICION DE VARIABLES
  double cantTrajes, precio, descuento, precioTotal;

  //ENTRADA
  stdout.writeln("Ingrese la cantidad de trajes que compró");
  cantTrajes = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el precio unitario");
  precio = double.parse(stdin.readLineSync()!);

  precioTotal = precio * cantTrajes;

  if(cantTrajes>3){
    descuento = precioTotal * 0.17;
    precioTotal = precioTotal-descuento;
    stdout.writeln("Tiene un descuento de 17%");
  }
  stdout.write("usted compró la cantidad de $cantTrajes y debe pagar $precioTotal");
}