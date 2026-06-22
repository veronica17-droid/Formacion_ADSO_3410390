// Leer 10 números e imprimir solamente los números positivos 
import 'dart:io';

void main(List<String> args) {
  int numeros;
  String resultadoFinal = "";
  for (var i = 0; i <  10; i++) {
    stdout.writeln("Ingrese un numero");
    numeros = int.parse(stdin.readLineSync()!);
    if (numeros > 0) {
        resultadoFinal += "El numero $numeros es postivo\n";
    } 
  }
    print(resultadoFinal);
}