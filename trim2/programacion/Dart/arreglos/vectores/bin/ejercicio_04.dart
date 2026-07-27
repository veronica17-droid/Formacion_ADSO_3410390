/*
Almacenar 8 números en un vector, almacenarlos en otro vector en orden inverso al vector original
e imprimir el vector resultante.
 */
void main(List<String> args) {
  List<int> vector = [3, 4, 5, 6, 7, 7, 4, 3];
  
  List<int> vectorInverso = vector.reversed.toList();

  print("Vector original: $vector");
  print("Vector inverso: $vectorInverso");
}