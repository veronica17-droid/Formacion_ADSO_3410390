import "dart:io";

void main() {
  int aFavor = 0, enContra = 0, seAbstiene = 0, total = 0;
  String continuar;

  do {
    print("\n--- VOTO DEL DIPUTADO ---");
    print("1. A favor\n2. En contra\n3. Se abstiene");
    stdout.write("Seleccione una opción (1-3): ");
    int voto = int.parse(stdin.readLineSync()!);

    // Usamos switch para que sea más fácil de leer que los 'if-else'
    switch (voto) {
      case 1: aFavor++; total++; break;
      case 2: enContra++; total++; break;
      case 3: seAbstiene++; total++; break;
      default: print("Opción no válida.");
    }

    stdout.write("\n¿Desea ingresar otro diputado? (s/n): ");
    continuar = stdin.readLineSync()!.toLowerCase();

  } while (continuar == "s");

  print("\n=== RESULTADOS DE LA VOTACIÓN ===");
  print("Total de diputados: $total");

  // Si hay diputados, calculamos el porcentaje directamente en el print
  if (total > 0) {
    print("A Favor: ${(aFavor * 100) / total}%");
    print("En Contra: ${(enContra * 100) / total}%");
    print("Se Abstienen: ${(seAbstiene * 100) / total}%");
  } else {
    print("No se registraron votos.");
  }
}