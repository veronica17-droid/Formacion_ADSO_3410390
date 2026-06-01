
import 'dart:io';

void main(List<String> arguments) {
  print("--Finca cafetera--");
  int cantArboles;
  double phSuelo, dosisArbol, totalGramos, totalKilos;
  String tipoDosis;

  stdout.writeln("Ingrese la cantidad de árboles");
  cantArboles = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el ph del suelo");
  phSuelo = double.parse(stdin.readLineSync()!);

  if(phSuelo < 5.5){
    dosisArbol = 200;
    tipoDosis = "Dosis de choque (suelo acido)";
  }else{
    dosisArbol = 50;
    tipoDosis = "Dosis de mantenimiento";
  }
  totalGramos = dosisArbol * cantArboles;
  totalKilos = totalGramos / 1000;
  stdout.write("Se deben preparar $totalGramos gramos de abono, que equivalen a $totalKilos kilos, para una $tipoDosis");
  
  

}
