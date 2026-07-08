void main() {
  int numeroActual = 100;
  int sumaTotal = 0;
  do {
    sumaTotal = sumaTotal + numeroActual;
    numeroActual = numeroActual - 2;
  } while (numeroActual >= 0);

  print("La suma de la serie 100 + 98 + 96 + ... + 0 es: $sumaTotal");
}