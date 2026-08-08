/*
Hacer un algoritmo que llene una matriz de 10 * 10 y determine la posición
[fila, columna] del número mayor almacenado en la matriz. Los números son diferentes. 
 */
import 'dart:io';


void main(List<String> args) {
  List<List<int>> matriz = [];
  int mayor = 0;
  int filaMayor = 0;
  int columnaMayor = 0;

  
  for (var i = 0; i < 10; i++) {
    matriz.add([]);
    for (var j = 0; j < 10; j++) {
      print("Ingrese el número para la posición [$i][$j]:");
      int numero = int.parse(stdin.readLineSync()!);
      matriz[i].add(numero);

      
      if (i == 0 && j == 0) {
        mayor = numero;
        filaMayor = i;
        columnaMayor = j;
      } else if (numero > mayor) {
        mayor = numero;
        filaMayor = i;
        columnaMayor = j;
      }
    }
  }


  print("--- Matriz completa ---");
  for (var element in matriz) {
    print(element);
  }
  print("\nEl número mayor es: $mayor");
  print("Se encuentra en la posición: [Fila: $filaMayor, Columna: $columnaMayor]");
}