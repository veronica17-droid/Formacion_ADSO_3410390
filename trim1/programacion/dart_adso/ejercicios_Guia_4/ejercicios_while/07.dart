import "dart:io";

void main() {
  print("¿Cuántos números vas a ingresar?:");
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print("La cantidad de números debe ser mayor a cero.");
    return;
  }

  print("Ingrese el número 1:");
  double numero = double.parse(stdin.readLineSync()!);
  
  double mayor = numero;

  for (int i = 2; i <= n; i++) {
    print("Ingrese el número $i:");
    numero = double.parse(stdin.readLineSync()!);
    if (numero > mayor) {
      mayor = numero;
    }
  }

  print("El mayor valor de todo el conjunto es: $mayor");
}