/*4. En un montallantas se ha establecido una promoción de las llantas marca “Ponchadas”, dicha
promoción consiste en lo siguiente:
Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de
cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona
tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la
compra*/
import 'dart:io';

void main(List<String> args) {
  //DEFINICION DE VARIABLES
  double cantLlantas, total;
  //ENTRADA
  stdout.writeln("Ingrese la cantidad de llantas que compró");
  cantLlantas = double.parse(stdin.readLineSync()!);
  //PROCESO
  if (cantLlantas < 5) {
    total = cantLlantas * 90000;
    stdout.write(
      "Debe pagar \$90000 por cada llanta, por lo tanto el total es de \$$total",
    );
  } else if (cantLlantas >= 5 && cantLlantas < 10) {
    total = cantLlantas * 80000;
    stdout.write(
      "Debe pagar \$80000 por cada llanta, por lo tanto el total es de \$$total",
    );
  } else {
    total = cantLlantas * 70000;
    stdout.write(
      "Debe pagar \$70000 por cada llanta, por lo tanto el total es de \$$total",
    );
  }
}
