import 'dart:io';

void main(List<String> args) {
  //Imprime los números del 0 al 10
  for (var i = 0; i <= 10; i++) {
    print("Número $i");
  }

  print("---------------------------------");
  for (var i = 1; i <= 5; i++) {
    if (i != 5) {
      stdout.write("$i, ");
    } else {
      stdout.write("$i");
    }
  }

  print("---------------------------------");
  //Imprime los números de 2al 8
  int numFinal = 8;
  String numeros = "";
  for (var i = 2; i <= numFinal; i++) {
    numeros += "$i, ";
  }
  print(numeros.substring(0, numeros.length - 2));
  print("---------------------------------");
  //Imprime los números pares hasta el 20
  for (var i = 2; i <= 20; i += 2) {
    print(i);
  }

  print("---------------------------------");
  //Preguntar dos números al usuario y mostrar los números d es erango
  int a, b;
  stdout.writeln("Ingrese número 1");
  a = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese número 2");
  b = int.parse(stdin.readLineSync()!);

  for (var i = a; i <= b; i++) {
    print(" | $i |");
  }
  print("-22--------------------------------");

  int? num1, num2;
  String entradaDatos;
  print("Ingrese el número 1");
  entradaDatos = stdin.readLineSync()!;
  num1 = int.tryParse(entradaDatos) ?? 0;
  print("Ingrese el número 2");
  entradaDatos = stdin.readLineSync()!;
  num2 = int.tryParse(entradaDatos) ?? 3;

  if (num1 <= num2) {
    for (var i = num1; i <= num2; i++) {
      print(" | $i |");
    }
  }else{
    print("Rango incorrecto");
  }

  //Mostrar los números del -20 al 20
  for (var i = -20; i <=20; i++) {
    print(i);
  }

}
 