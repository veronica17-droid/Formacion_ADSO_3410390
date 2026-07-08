import "dart:io";

void main() {
  // 1. Pedimos la cantidad total de números
  print("¿Cuántos números vas a ingresar?:");
  int n = int.parse(stdin.readLineSync()!);

  // Verificamos que al menos se vaya a ingresar un número
  if (n <= 0) {
    print("La cantidad de números debe ser mayor a cero.");
    return;
  }

  // 2. Pedimos el primer número para que sea nuestro punto de partida
  print("Ingrese el número 1:");
  double numero = double.parse(stdin.readLineSync()!);
  
  // Guardamos este primer número como el mayor actual
  double mayor = numero;

  // 3. Ciclo para pedir el resto de los números (empezando desde el 2)
  for (int i = 2; i <= n; i++) {
    print("Ingrese el número $i:");
    numero = double.parse(stdin.readLineSync()!);

    // 4. Si el número actual es más grande que el que teníamos guardado, lo reemplazamos
    if (numero > mayor) {
      mayor = numero;
    }
  }


  print("El mayor valor de todo el conjunto es: $mayor");
}