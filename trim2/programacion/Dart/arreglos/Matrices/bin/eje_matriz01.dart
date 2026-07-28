void main(List<String> args) {
  List<int> vector;
  List<List<int>> matrizNum = [];

  //Inicialización de matriz con valores
  for (var i = 0; i < 3; i++) {
    matrizNum.add([]);
    for (var j = 0; j < 5; j++) {
      matrizNum[i].add(0);
    }
  }
  print("Matriz 3*5 $matrizNum");

  matrizNum[1][2] = 4;
  for (var element in matrizNum) {
    print(element);
  }

  //Matriz con datos iniciales
  print("*****");
  List<List<int>> matrizNum2 = [
    [5, 4, 8, 6, 1],
    [7, 5, 8, 6, 1],
    [7, 5, 8, 6, 1]
  ];

  matrizNum2[1][2]=0;
  for (var element in matrizNum2) {
    print(element);
  }

  print(matrizNum2[2][4]);
  print(matrizNum2[0][0]);
}