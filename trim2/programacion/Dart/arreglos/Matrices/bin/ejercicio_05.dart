import 'dart:io';

void main(List<String> args) {
  List<List<int>> matrizA = [];
  List<List<int>> matrizB = [];

  // 1. Lectura de la Matriz A (3x3)
  print("INGRESO DE DATOS: MATRIZ A (3x3)");
  for (var i = 0; i < 3; i++) {
    matrizA.add([]);
    for (var j = 0; j < 3; j++) {
      stdout.write("Matriz A [$i][$j]: ");
      int num = int.parse(stdin.readLineSync()!);
      matrizA[i].add(num);
    }
  }

  // 2. Lectura de la Matriz B (3x3)
  print("\n=== INGRESO DE DATOS: MATRIZ B (3x3) ===");
  for (var i = 0; i < 3; i++) {
    matrizB.add([]);
    for (var j = 0; j < 3; j++) {
      stdout.write("Matriz B [$i][$j]: ");
      int num = int.parse(stdin.readLineSync()!);
      matrizB[i].add(num);
    }
  }

  // 3. Inicializar la Matriz Resultante (3x3) llena de ceros
  List<List<int>> matrizResultado = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];

  // 4. Multiplicación de Matrices
  for (var i = 0; i < 3; i++) {         // Recorre filas de A
    for (var j = 0; j < 3; j++) {       // Recorre columnas de B
      for (var k = 0; k < 3; k++) {     // Realiza la suma de productos
        matrizResultado[i][j] += matrizA[i][k] * matrizB[k][j];
      }
    }
  }

  // 5. Imprimir resultados
  print("\n--- MATRIZ A ---");
  for (var fila in matrizA) {
    print(fila);
  }

  print("\n--- MATRIZ B ---");
  for (var fila in matrizB) {
    print(fila);
  }

  print("\n--- MATRIZ RESULTADO (A x B) ---");
  for (var fila in matrizResultado) {
    print(fila);
  }
}