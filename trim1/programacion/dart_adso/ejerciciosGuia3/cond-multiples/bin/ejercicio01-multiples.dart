import 'dart:io';

void main(List<String> args) {
  //DEFINCION DE VARIABLES
  int categoria, cantEscobas, cantRecogedores, cantAromatizantes;
  double escoba = 3000, recogedores = 2000, aromatizantes = 1000;
  double totalCompra, descuento, totalConDescuento;
  String? nombre;
  //ENTRADA
  stdout.writeln("Ingrese su nombre");
  nombre = stdin.readLineSync();
  stdout.writeln("¿A qué categoria pertenece usted?");
  categoria = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese la cantidad de escobas que compro");
  cantEscobas = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese la cantidad de recogedores que compro");
  cantRecogedores = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese la cantidad de aromatizantes que compro");
  cantAromatizantes = int.parse(stdin.readLineSync()!);

  //PROCESO
  totalCompra =
      (cantEscobas * escoba) +
      (cantRecogedores * recogedores) +
      (cantAromatizantes * aromatizantes);
  switch (categoria) {
    case 1:
      descuento = totalCompra * 0.05;
      totalConDescuento = totalCompra - descuento;
      stdout.write("Cliente: $nombre");
      stdout.write("Subtotal a pagar: $totalCompra");
      stdout.write("Descuento: $descuento");
      stdout.write("Total a pagar $totalConDescuento");
      break;
    case 2:
      descuento = totalCompra * 0.08;
      totalConDescuento = totalCompra - descuento;
      stdout.write("Cliente: $nombre");
      stdout.write("Subtotal a pagar: $totalCompra");
      stdout.write("Descuento: $descuento");
      stdout.write("Total a pagar $totalConDescuento");
      break;
    case 3:
      descuento = totalCompra * 0.12;
      totalConDescuento = totalCompra - descuento;
      stdout.write("Cliente: $nombre");
      stdout.write("Subtotal a pagar: $totalCompra");
      stdout.write("Descuento: $descuento");
      stdout.write("Total a pagar $totalConDescuento");
      break;
    case 4:
      descuento = totalCompra * 0.15;
      totalConDescuento = totalCompra - descuento;
      stdout.write("Cliente: $nombre");
      stdout.write("Subtotal a pagar: $totalCompra");
      stdout.write("Descuento: $descuento");
      stdout.write("Total a pagar $totalConDescuento");
      break;
      default: 
      stdout.write("Ingrese una categoria valida");
  }
}
