/*
Eje.03
Se requiere simular la descarga de un archivo por
internet hasta que llegue al 100%.
Con un número aleatorio entre 1 y 20 se debe
simular ese porcentaje de descarga
 */
import 'dart:math';
void main(List<String> args) {
  Random rand = Random();
  double porcentajeDescarga = 0; //Variable acumulador
  double descarga;
  do {
    descarga = rand.nextDouble()* 20;
    //print("Porcentaje descarga> ${descarga.round()}");
    porcentajeDescarga += descarga;
    if (porcentajeDescarga > 100) {
      porcentajeDescarga = 100;
    }
    print("Descarga total > ${porcentajeDescarga.toStringAsFixed(2)}");
  } while (porcentajeDescarga < 100);
  print("El archivo se descargó exitosamente");
}