/*Diseñe un algoritmo que lea un número cualquiera y lo busque en el vector X, el cual tiene
almacenados 12 elementos. Escribir la posición donde se encuentra almacenado el número en el
vector o el mensaje “NO” si no lo encuentra.*/


import 'dart:io';

void main(List<String> args) {
  List<int> vectorX = [1, 2, 3, 4, 5, 6, 7, 8, 9, 34, 78];
  
  print("Ingrese el número");
  int numero = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < vectorX.length; i++) {
    if (numero == vectorX[i]) {
      print("El número está en la posición ${[i]}");
    }else{
      print("El número no se encuentra en el vector");
      break;
    }
  }
}