/*
En el procesamiento del café, el control térmico es vital. Escribe un programa que simule el monitoreo de temperatura de una máquina durante el proceso de tostión. La temperatura inicial es de 180°C y debe aumentar progresivamente una cantidad de grados específica y que será aleatoria hasta alcanzar el punto ideal de tostión a 200°C.
Se debe consultar la manera de generar un número aleatorio en Dart
 */

import 'dart:math';

void main(List<String> args) {
  double tempInicial = 180;
  double puntoIdeal = 200;
  Random random = Random();
  while (tempInicial < puntoIdeal) {
    int min = 180;
    int max = 200;
    int aleatorio = min + random.nextInt(max - min + 1);
    print(aleatorio);
  }

}