/*
Consultar el método de ordenación por burbuja y ordenar un arreglo entero de 10 elementos.
 */

void main() {
  List<int> numeros = [45, 12, 89, 3, 22, 78, 56, 91, 15, 34];
  print("Arreglo original: $numeros");

  int n = numeros.length;
  
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      
      // Si el número actual es mayor que el siguiente, se intercambian
      if (numeros[j] > numeros[j + 1]) {
        int temporal = numeros[j]; // Guardamos el valor temporalmente
        numeros[j] = numeros[j + 1];
        numeros[j + 1] = temporal;
      }
      
    }
  }

  // 3. Mostramos el resultado
  print("Arreglo ordenado: $numeros");
}