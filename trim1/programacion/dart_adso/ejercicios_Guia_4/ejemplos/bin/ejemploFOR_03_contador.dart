import 'dart:io';

void main(List<String> args) {
  int partidosJugados = 14;
  int contAcertados = 0;
  int acertado;
  for (var i = 0; i < partidosJugados; i++){
    print("Ingrese resultado del partido número ${i+1}. 1. Acertado  2. No Acertado");
    acertado = int.parse(stdin.readLineSync()!);
    if(acertado == 1){
      contAcertados++;
    }
  }
  print("La cantidad de partidos aceptados es: $contAcertados");
}