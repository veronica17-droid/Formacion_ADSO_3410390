/*
Diseñar un algoritmo que lea una palabra o una frase en un arreglo de caracteres y determinar si esa
palabra o frase es palíndroma
 */
import 'dart:io';

void main() {
  print("Ingrese una palabra o frase:");
  String texto = stdin.readLineSync()!.toLowerCase();

  String invertido = texto.split('').reversed.join(''); //Invierte el texto

  if (texto == invertido) {
    print("Es palíndroma.");
  } else {
    print("No es palíndroma.");
  }
}