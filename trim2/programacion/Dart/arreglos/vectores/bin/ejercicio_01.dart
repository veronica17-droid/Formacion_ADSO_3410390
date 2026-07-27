
/*
Calcular el promedio de 50 valores almacenados en un vector. Determinar además cuantos son
mayores que el promedio, imprimir el promedio, el número de datos mayores que el promedio y una
lista de valores mayores que el promedio.
 */

import 'dart:io';

void main(List<String> args) {
  List<double> valores = [];
  List<double> mayoresQuePromedio = [];
  double suma = 0;
  int cantidadElementos = 50; 

  for (var i = 0; i < cantidadElementos; i++) {
    print("Ingrese el valor ${i + 1}:");
    double valor = double.parse(stdin.readLineSync()!);
    
    valores.add(valor);
    suma += valor; 
  }


  double promedio = suma / cantidadElementos;

  for (var i = 0; i < cantidadElementos; i++) {
    if (valores[i] > promedio) {
      mayoresQuePromedio.add(valores[i]);
    }
  }

 
  print("El promedio es: $promedio");
  print("Cantidad de valores mayores al promedio: ${mayoresQuePromedio.length}");
  print("Lista de valores mayores al promedio: $mayoresQuePromedio");
}