/*5. Hacer un algoritmo que lea la base y la altura de un triángulo y muestre su
perímetro y área*/

//Angie Verónica Carvajal Cardona
import 'dart:io';
import 'dart:math'; //Se importa darh math para las funciones matematicas
void main(List<String> args) {
  //Definicion de variables
  double base, altura, perimetro, area, ladoIso, hipotenusa;
  String triangulo;

  //Entrada de datos
  stdout.writeln("Ingrese la base de su triángulo");
  base = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese la altura de su triángulo");
  altura = double.parse(stdin.readLineSync()!);

  stdout.writeln("Digite el nombre del triángulo al cual le quiere calcular su área y perimetro (isoceles, rectangulo, escaleno)");
  triangulo= (stdin.readLineSync()!);
  //PROCESO
  area = base *altura/2;

  switch(triangulo){
    case "isoceles": 
      ladoIso=sqrt(pow(base / 2, 2) + pow(altura, 2)); //sqrt=raiz cuadrada, pow=elevado a la b... (a,b)
      perimetro = base + (2 * ladoIso);
      print("El perimetro de su triángulo isoceles es $perimetro y su área es $area");
    break;
    case "rectangulo":
      hipotenusa = sqrt(pow(base, 2) + pow(altura, 2));
      perimetro = base + altura + hipotenusa;
      print("El perimetro de su triángulo es $perimetro y su área es $area");
    break;
    case "escaleno":
      print("Para calcular el perimetro de su triángulo se deben tener todos los lados, su área es $area");
    break;
    default:
      print("Ingrese una opción valida");
  }
  

}