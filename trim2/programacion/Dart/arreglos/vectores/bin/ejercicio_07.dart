/*
Diseñar un algoritmo que lea una palabra o una frase en un arreglo de caracteres y determinar si esa
palabra o frase es palíndroma
 */
import 'dart:io';

void main(List<String> args) {
  String palabra;
  List<String> vectorPal = [];
  print("Ingrese la palabra/frase para verificar si es palindroma");
  palabra = stdin.readLineSync()!.toLowerCase();
  print("${palabra[1]}");

  //SE LLENA EL VECTOR PAL SIN TENER EN CUENTA ESPACIOS
  for (var i = 0; i < palabra.length; i++) {
    print(palabra[i]);
    if (palabra[i] != " ") {
      vectorPal.add(palabra[i]);
    }
  }

  print(vectorPal);

  int inicio = 0;
  int fin = palabra.length-1;
  bool esPalindroma = true;
  while (inicio<fin) {
    if (vectorPal[inicio] != vectorPal[fin]) {
      //NO ES PALINDROMA
      esPalindroma = false;
      break;
    }
    inicio ++;
    fin --;
  }
  if (esPalindroma == true) {
    print("La palabra/frase $palabra es palindroma");
  }else{
    print("La palabra/frase $palabra no es palindroma");
  }
}