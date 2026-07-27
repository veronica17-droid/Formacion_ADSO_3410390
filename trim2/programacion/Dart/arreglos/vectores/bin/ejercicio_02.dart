/*
Llenar dos vectores A y B de 10 elementos cada uno, sumar el elemento uno del vector A con el
elemento uno del vector B y así sucesivamente hasta 10, almacenar el resultado en un vector C, e
imprimir el vector resultante.
 */
void main(List<String> args) {
  List<int> vectorA = [3, 4, 5, 6, 7, 7, 4, 3, 5, 7];
  List<int> vectorB = [3, 6, 2, 4, 5, 6, 7, 8, 9, 5];
  List<int> vectorC = [];

  for (var i = 0; i < vectorA.length; i++) {
    int suma = vectorA[i] + vectorB[i];
    vectorC.add(suma);
  }

  print("$vectorC");

}