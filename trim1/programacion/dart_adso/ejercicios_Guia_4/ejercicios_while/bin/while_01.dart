/*
Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana. Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de sus ventas. El gerente de su compañía desea saber cuanto dinero obtendrá en la semana cada vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en cuenta su sueldo base y sus comisiones. 
 */
import 'dart:io';

void main(List<String> arguments) {
  int numVendedores;
  int contador = 1; // Controla el ciclo while

  print("Ingrese el número de vendedores que hay:");
  numVendedores = int.parse(stdin.readLineSync()!);

  while (contador <= numVendedores) {
    print("--- VENDEDOR $contador ---");
    print("Ingrese el sueldo base del vendedor:");
    double sueldoBase = double.parse(stdin.readLineSync()!);
    print("Ingrese el monto de la venta 1:");
    double venta1 = double.parse(stdin.readLineSync()!);
    print("Ingrese el monto de la venta 2:");
    double venta2 = double.parse(stdin.readLineSync()!);
    print("Ingrese el monto de la venta 3:");
    double venta3 = double.parse(stdin.readLineSync()!);
    double totalVentas = venta1 + venta2 + venta3;
    double comisiones = totalVentas * 0.10; 
    double sueldoTotal = sueldoBase + comisiones;
    print("Monto total por comisiones: \$${comisiones.toStringAsFixed(2)}");
    print("Sueldo total neto (Base + Comisiones): \$${sueldoTotal.toStringAsFixed(2)}");
    contador++;
  }
}
