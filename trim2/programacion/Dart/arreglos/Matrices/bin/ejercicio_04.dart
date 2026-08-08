import 'dart:io';

void main(List<String> args) {
  // 1. Pedir el tamaño del cuadro mágico (N x N)
  stdout.write("Ingrese la dimensión del cuadro mágico (ejemplo 3 para 3x3): ");
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz = [];

  // 2. Llenar la matriz
  print("\n--- Ingreso de datos para el cuadro mágico ---");
  for (var i = 0; i < n; i++) {
    matriz.add([]);
    for (var j = 0; j < n; j++) {
      stdout.write("Ingrese el número para la posición [$i][$j]: ");
      int numero = int.parse(stdin.readLineSync()!);
      matriz[i].add(numero);
    }
  }

  // Variable para saber si sigue siendo mágico o no
  bool esMagico = true;

  // Tomamos la suma de la primera fila [0] como nuestro 'número mágico' de referencia
  int sumaReferencia = 0;
  for (var j = 0; j < n; j++) {
    sumaReferencia += matriz[0][j];
  }

  // 3. Validar las demás filas
  for (var i = 1; i < n; i++) {
    int sumaFila = 0;
    for (var j = 0; j < n; j++) {
      sumaFila += matriz[i][j];
    }
    if (sumaFila != sumaReferencia) {
      esMagico = false;
    }
  }

  // 4. Validar todas las columnas
  for (var j = 0; j < n; j++) {
    int sumaColumna = 0;
    for (var i = 0; i < n; i++) {
      sumaColumna += matriz[i][j];
    }
    if (sumaColumna != sumaReferencia) {
      esMagico = false;
    }
  }

  // 5. Validar Diagonal Principal (de arriba-izquierda a abajo-derecha)
  int sumaDiagPrincipal = 0;
  for (var i = 0; i < n; i++) {
    sumaDiagPrincipal += matriz[i][i]; // En la diag principal, fila == columna
  }
  if (sumaDiagPrincipal != sumaReferencia) {
    esMagico = false;
  }

  // 6. Validar Diagonal Secundaria (de arriba-derecha a abajo-izquierda)
  int sumaDiagSecundaria = 0;
  for (var i = 0; i < n; i++) {
    sumaDiagSecundaria += matriz[i][n - 1 - i];
  }
  if (sumaDiagSecundaria != sumaReferencia) {
    esMagico = false;
  }

  // 7. Imprimir la matriz ingresada
  print("\n--- Cuadro Ingresado ---");
  for (var fila in matriz) {
    print(fila);
  }

  // 8. Mensaje final según los requerimientos
  print("");
  if (esMagico) {
    print("Felicidades creaste un cuadro mágico");
  } else {
    print("Modifica los números en el cuadro para que lo hagas mágico");
  }
}