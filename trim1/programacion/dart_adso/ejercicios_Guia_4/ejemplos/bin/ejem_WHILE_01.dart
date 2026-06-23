//NÚMEROS DEL 1 AL 5
void main(List<String> args) {
  int i = 0;
  print("Imprimirlo con WHILE");
  while (i<=5) {
    print("Contador: $i");
    i ++;
  }
  print("Imprimirlo con FOR");
  for (var i = 0; i <=5; i++) {
    print("Contador: $i");
  }
}