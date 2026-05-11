/*18. Leer el número de un mes (1 a 4) y mostrar la estación del año correspondiente
(ejemplo: 1-Verano, 2-Otoño, etc.).*/
//Angie verónica Carvajal Cardona
import 'dart:io';
void main(List<String> args) {
    //Definición de variables
    int num;
    //Entrada
    stdout.writeln("Ingrese un número para mostrar la estación del año (1-4)");
    num = int.parse(stdin.readLineSync()!);
    //Proceso y Salida
    switch (num){
        case 1:
        stdout.write("Verano");
        break;
        case 2:
        stdout.write("Otoño");
        break;
        case 3:
        stdout.write("Invierno");
        break;
        case 4:
        stdout.write("Primavera");
        break;
        default: 
        stdout.write("Ingrese una opción valida");
    }
}