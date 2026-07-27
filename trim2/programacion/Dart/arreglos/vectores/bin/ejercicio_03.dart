/*
Almacenar 15 números en un vector, imprimir cuantos son ceros, cuántos son negativos, cuantos
positivos. Imprimir además la suma de los negativos, la suma de los ceros y la suma de los positivos.
 */

void main(List<String> args) {
  List<double> vectorA = [3, 4, 5, -6, 7, -7, 4, 3, 5, 7, 0, -4, 5, 0, -4];
  double ceros = 0;
  double positivos = 0;
  double negativos= 0;
  double sumaPositivos = 0, sumaNegativos = 0;
  for (var i = 0; i < vectorA.length; i++) {
    if (vectorA[i] == 0) {
      ceros ++;
    }else if(vectorA[i] > 0){
      positivos ++;
      sumaPositivos += vectorA[i];
    }else{
      negativos ++;
      sumaNegativos += vectorA[i];
    }
  }
  print("La cantidad de ceros en el vector es: $ceros");
  print("La cantidad de positivos en el vector es: $positivos su suma es: $sumaPositivos");
  print("La cantidad de negativos en el vector es: $negativos su suma es: $sumaNegativos");
}