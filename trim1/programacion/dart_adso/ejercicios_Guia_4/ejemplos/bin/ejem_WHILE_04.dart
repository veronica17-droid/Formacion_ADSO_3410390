/*
3. Una persona quiere comprarse una moto que cuesta 2,000,000 pesos. Cada semana logra guardar x cantidad de dinero pesos en su alcancía.
Utiliza un bucle while para calcular y mostrar cuántas semanas necesita ahorrar para alcanzar o superar la meta de su juguete.
 */
import 'dart:io';

void main(List<String> args) {
  double valorMoto = 2000000;
  double ahorroSemanal;
  double ahorroTotal = 0;  //Variable tipo acomulador
  int contadorSemanas = 0;

  while (ahorroTotal < valorMoto) {
    print("Ingrese el valor ahorrado en la semana #${contadorSemanas+1}");
    ahorroSemanal = double.parse(stdin.readLineSync()!);

    while (ahorroSemanal <0) {
      print("El ahorro no puede ser negativo");
      print("Ingrese de nuevo el valor ahorrado en la semana #${contadorSemanas+1}");
      ahorroSemanal = double.parse(stdin.readLineSync()!);
    }
    ahorroTotal = ahorroTotal + ahorroSemanal;
    contadorSemanas++;
  }
  print("Se necesitaron $contadorSemanas semanas, y se ahorró en total $ahorroTotal");
  
}