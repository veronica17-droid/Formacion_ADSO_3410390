/*
 Hacer un algoritmo que almacene números en una matriz de 5 * 6.
 Imprimir la suma de los números almacenados en la matriz. 
 */
import 'dart:io';

void main(List<String> args) {
  List<List<int>> matriz = [];
  int suma = 0;

  for (var i = 0; i < 5; i++) {
    matriz.add([]); 

    for (var j = 0; j < 6; j++) {
      print("Ingrese el número para la posición [$i][$j]:");
      int numero = int.parse(stdin.readLineSync()!);
      matriz[i].add(numero); 
    }
  }

  print("Matriz resultante:");
  for (var element in matriz) {
    print(element);
  }
  //SMA
  for (var fila in matriz) {
    for (var numero in fila) {
      suma += numero;
    }
  }

  print("La suma de todos los números es: $suma");
}