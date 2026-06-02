import 'dart:io'; 
void main(List<String> args) {
  double numero;
  int valorFinal = 10;
  String entradaDatos;
  double suma=0; // Variable de tipo acumulador
  for (int i = 0; i < valorFinal; i++) {
    print("Ingrese el valor del número ${i+1}");
    entradaDatos = stdin.readLineSync()!;
    numero = double.tryParse(entradaDatos) ?? 0;
    suma = suma + numero;
  }
  print("La suma de los números es: $suma");
}
