import 'dart:io';

// Un concesionario vial necesita calcular la tarifa de un peaje. El costo base depende del tipo de vehículo: 1 (Moto), 2 (Automóvil), 3 (Bus), 4 (Camión/Tractomula). Sin embargo, para los buses y camiones, se debe cobrar un valor adicional por cada eje que tenga el vehículo. Solicite al usuario el tipo de vehículo y el número de ejes. Utilice un switch para determinar la tarifa. Las motos pagan tarifa plana de $5.000 y los autos $10.000. Los buses pagan $15.000 + $2.000 por cada eje. Los camiones pagan $20.000 + $5.000 por cada eje. Muestre el total a pagar. 
void main(List<String> args) {
  print("---- Concesionario Vial ----");
  int tipoVehiculo, numEjes;
  double tarifaPeaje, total;
  //Solicitar tipo de vehiculo y num ejes
  stdout.writeln("Ingrese el tipo de vehículo. 1 (Moto), 2 (Automóvil), 3 (Bus), 4 (Camión/Tractomula). ");
  tipoVehiculo = int.parse(stdin.readLineSync()!);

  switch (tipoVehiculo){
    case 1: //Moto
        tarifaPeaje = 5000;
        total = tarifaPeaje;
      break;
    case 2: //Automovil
        tarifaPeaje = 10000;
        total = tarifaPeaje;
      break;
    case 3: //Bus
        tarifaPeaje = 15000;
        stdout.writeln("Cuál es el número de ejes del bus?");
        numEjes = int.parse(stdin.readLineSync()!);
        total = tarifaPeaje + numEjes * 2000;
      break;
    case 4:
        tarifaPeaje = 20000;
        stdout.writeln("Cuál es el número de ejes del camión/tractomula?");
        numEjes = int.parse(stdin.readLineSync()!);
        total = tarifaPeaje + numEjes * 5000;
      break;
    default:
      total = 0;
      print("Opción no valida");
  }
  stdout.write("El total a pagar es $total");
}