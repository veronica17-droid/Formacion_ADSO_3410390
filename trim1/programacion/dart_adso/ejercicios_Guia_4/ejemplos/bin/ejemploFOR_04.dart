import 'dart:io';

void main(List<String> args) {
  /*
  En una conferencia en el Milton se requiere saber cuantos aprendices hay de ADSO, cuantos de Automotriz 
  y cuantos de Mecanizado.Se debe solicitar al ususario la cantidas
  total de aprendices.
   */
  int cantAprendices = 0;
  int numAprendices;
  int adso = 0, automotriz = 0, mecanizado = 0;

  stdout.writeln("Ingrese la cantidad de aprendices que hay en la conferencia");
  numAprendices = int.parse(stdin.readLineSync()!);

  for(int i = 0; i<numAprendices; i++){
    stdout.writeln("A que programa de formación (adso, mecanizado o automotriz) pertence el aprendiz ${i+1}");
    String programa = stdin.readLineSync()!.toLowerCase().trim();
    if(programa == "adso"){
      adso++;
    }else if(programa == "automotriz"){
      automotriz ++;
    }else if(programa == "mecanizado"){
      mecanizado ++;
    }else{
      print("Ingrese un programa valido (adso, mecanizado o automotriz)");
    }
  }
  stdout.writeln("La cantidad de aprendices que hay es: $cantAprendices");
  stdout.writeln("ADSO: $adso");
  stdout.writeln("Automotriz $automotriz");
  stdout.writeln("Mecanizado $mecanizado");
}