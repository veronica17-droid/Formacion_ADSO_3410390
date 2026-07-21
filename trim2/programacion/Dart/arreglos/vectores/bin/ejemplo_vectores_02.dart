import 'dart:io';

void main(List<String> args) {
  // SOLICITAR DATOS AL USUARIO PARA LLENAR EL VECTOR
  // -> Ingresar 10 números a un vector de enteros

  List<int> numeros =[]; // Declaración de vector enteros
  int num;
  //LLENAR TODOS LOS ELEMENTOS DEL VECTOR CON DATOS DEL USUARIO
  for (var i = 0; i <10; i++) {
    print("Ingrese el elemento #${i+1}");
    num = int.parse(stdin.readLineSync()!);
    // Agregar el número al vector/lista
    numeros.add(num);
  }
  print(numeros);

  print("*" * 40); // IMPRIMIR 40 ASTERICOS+
  //MOSTRAR TODOS LOS ELEMENTOS DE UNA LISTA
  for (var i = 0; i < numeros.length; i++) {
    print("Elemento #${i+1}: ${numeros[i]}");
  }

  print("*" * 40); // IMPRIMIR 40 ASTERICOS
  for (var item in numeros ) {
    print("Elemento: $item");
  }

  //VECTOR DE MULTIPLES DE DATOS  
  List<dynamic> listaDinamica=[];
  listaDinamica.add(30);
  listaDinamica.add(4.5);
  listaDinamica.add("ADSO");
  listaDinamica.add(true);
  int edad = 22;
  listaDinamica.add(edad);
  List<bool> estados=[true, false, true, false, true, false];
  listaDinamica.add(estados);
  print(listaDinamica); // [30, 4.5, "ADSO", true, 22, []]

  if (listaDinamica[2] == "ADSO") {
    listaDinamica[3] = false;
  }
  print(listaDinamica); //[30, 4.5, "ADSO", true, 22, []]


}