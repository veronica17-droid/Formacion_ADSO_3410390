import "dart:io";

void main() {
  print("Ingrese un número entero positivo:");
  int numero = int.parse(stdin.readLineSync()!);

  int numeroOriginal = numero;
  int numeroInvertido = 0;

  do {
    int ultimoDigito = numero % 10;
    numeroInvertido = (numeroInvertido * 10) + ultimoDigito;
    numero = numero ~/ 10; // División entera para remover el último dígito
  } while (numero > 0);

  print("El número original era: $numeroOriginal");
  print("El número invertido es: $numeroInvertido");
}