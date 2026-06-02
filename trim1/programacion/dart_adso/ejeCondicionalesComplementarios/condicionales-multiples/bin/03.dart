import 'dart:io';

void main(List<String> args) {
  double pesoKilos, tarifaPorKilo, impuestoAduanero;
  int continente;

  stdout.writeln("Ingrese el peso en kilogramos de su paquete");
  pesoKilos = double.parse(stdin.readLineSync()!);

  stdout.writeln(
    "Ingrese el continente de destino. 1: América del Norte, 2: Europa, 3: Asia",
  );
  continente = int.parse( stdin.readLineSync()!);
  
  tarifaPorKilo = 0;
  switch (continente) {
    case 1:
      tarifaPorKilo = 15000;
      impuestoAduanero = 25000;
      break;
    case 2:
      tarifaPorKilo = 25000;
      impuestoAduanero = 40000;
      break;
    case 3:
      tarifaPorKilo = 35000;
      impuestoAduanero = 60000;

    default:
      impuestoAduanero = 0;
      print("Valor invalido");
    break;
  }

  double costo = pesoKilos * tarifaPorKilo; 
  double totalPagar = costo + impuestoAduanero;
  stdout.writeln("La tarifa por kilo es: $tarifaPorKilo");
  stdout.writeln("El impuesto es: $impuestoAduanero");
  stdout.writeln("El total a pagar es: $totalPagar");
}
