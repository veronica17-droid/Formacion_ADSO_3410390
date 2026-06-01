import 'dart:io';

void main(List<String> args) {
  int faltas, estrato;
  String nombre;

  stdout.writeln("Ingrese su nombre");
  nombre = stdin.readLineSync() ?? "";
  stdout.writeln("Qué estrato es? ");
  estrato = int.parse(stdin.readLineSync()!);
  stdout.writeln("Cuántas faltas disciplinarias tiene?");
  faltas = int.parse(stdin.readLineSync()!);

  if((estrato == 2 || estrato == 1) && faltas == 0){
    stdout.write("$nombre, debe pagar \$2.000 por su almuerzo");
  }else{
    stdout.write("$nombre, debe pagar \$6.000 por su almuerzo");
  }


}