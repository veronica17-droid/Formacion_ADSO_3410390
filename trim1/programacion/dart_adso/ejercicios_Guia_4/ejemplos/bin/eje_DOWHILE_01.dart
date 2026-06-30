/*Eje 01. S e requiere simular el lanzamiento de undado
de 6 caras. Se debe lanzar el dado hasta que caiga el número 6. En ese momento
se le dirá al usuario que ganó con x cantidad de intentos
 */

import 'dart:math';

void main(List<String> args) {
  int intentos = 0; //variable tipo contador
  Random lanzamiento = Random(); //Crear un objeto de la clase random
  int valorDado;
  do{
    intentos++;
    print("Lanzamiento del dado");
    valorDado = lanzamiento.nextInt(6) + 1;
    print("Valor del dado $valorDado");
  }while(valorDado != 6);
  print("Has ganado con el #6 con $intentos intento");
}