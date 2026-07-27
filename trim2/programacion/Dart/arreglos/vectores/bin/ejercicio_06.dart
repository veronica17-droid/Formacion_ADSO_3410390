/*
Diseñe un algoritmo que lea dos vectores A y B de 7 elementos cada uno y multiplique el primer
elemento de A con el último elemento de B y luego el segundo elemento de A por el sexto elemento
de B y así sucesivamente hasta llegar al séptimo elemento de A por el primer elemento de B. El
resultado de la multiplicación almacenarlo en un vector C. Mostrar el resultado.
 */
void main(List<String> args) {
  List<int> vectorA = [1, 2, 3, 4, 5, 6];
  List<int> vectorB = [8, 9, 6, 2, 3, 4];
  List<int> vectorC = [];

  List<int> vectorBInvertido = vectorB.reversed.toList();
  int multip; 

  for (var i = 0; i < vectorA.length; i++) {
    multip = vectorA[i] * vectorBInvertido[i];
    vectorC.add(multip);
  }
  
  print("$vectorC");
}