
import 'dart:io';

void main(List<String> args) {
  List<List<int>> produccion = [];
  List<String> nombresArticulos = [];

  for (var i = 0; i < 5; i++) {
    print("Registro del Artículo ${i + 1}");
    stdout.write("Ingrese el nombre del artículo: ");
    String nombre = stdin.readLineSync()!;
    nombresArticulos.add(nombre);
    produccion.add([]);
    for (var j = 0; j < 3; j++) {
      stdout.write("Ingrese producción para el Turno ${j + 1}: ");
      int cantidad = int.parse(stdin.readLineSync()!);
      produccion[i].add(cantidad);
    }
  }
  List<int> totalPorArticulo = [];
  int mayorProduccion = -1;
  String articuloMasProductivo = "";

  for (var i = 0; i < 5; i++) {
    int sumaFila = 0;
    for (var j = 0; j < 3; j++) {
      sumaFila += produccion[i][j];
    }
    totalPorArticulo.add(sumaFila);

    
    if (i == 0) {
      mayorProduccion = sumaFila;
      articuloMasProductivo = nombresArticulos[i];
    } else if (sumaFila > mayorProduccion) {
      mayorProduccion = sumaFila;
      articuloMasProductivo = nombresArticulos[i];
    }
  }

  List<int> totalPorTurno = [0, 0, 0];
  for (var j = 0; j < 3; j++) {
    for (var i = 0; i < 5; i++) {
      totalPorTurno[j] += produccion[i][j];
    }
  }

  for (var i = 0; i < 5; i++) {
    print(
      "Artículo: ${nombresArticulos[i]} | Producción por turnos: ${produccion[i]} | Total: ${totalPorArticulo[i]}",
    );
  }

  print("------------------------------------------------------------");
  print("Total producido en Turno 1: ${totalPorTurno[0]}");
  print("Total producido en Turno 2: ${totalPorTurno[1]}");
  print("Total producido en Turno 3: ${totalPorTurno[2]}");
  print("------------------------------------------------------------");
  print(
    "El artículo con mayor producción fue: $articuloMasProductivo con $mayorProduccion unidades.",
  );
}