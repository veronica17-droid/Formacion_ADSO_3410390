import 'dart:io';

void main(List<String> args) {
  /*
  SE REQUIERE GUARDAR 20 NÚMEROS EN UN ARREGLO INGRESADOS
  POR EL USUARIO. SE DEBE DECIDIR CUANTOS NÚMEROS PARES HAY Y CUANTOS
  IMPARES. SE DEBE MOSTRAR EL PRODUCTO DE LOS PARES Y EL PROMEDIO DE LOS IMPARES
  */
  List<int> numeros=[];
  int contPares=0, contImpares = 0;
  double productoPares = 1, sumaImpares = 0;
  double promedioImpares;

  //LLENAR EL VECTOR CON LOS 20 NUMEROS DEL USUARIO
  for (var i = 0; i <20; i++) {
    print("Ingrese el elemento #${i+1}");
    int num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
  }

  //PROCESAMIENTO
  for (var i = 0; i < numeros.length; i++) {
    //VALIDACION NUMEROS PARES    
    if (numeros[i] % 2 == 0) {
      contPares ++; //Contador de pares
      productoPares = productoPares * numeros[i];
    }else{
       contImpares ++;
       sumaImpares = sumaImpares + numeros[i]; //SUMA IMPARES
    }
  }

  //RESULTADO
  print("La cantidad de pares es: $contPares");
  print("La cantidad de impares es: $contImpares");
  print("El producto de los pares es: $productoPares");

  if (sumaImpares > 0) {
    promedioImpares = sumaImpares / contImpares;
    print("El promedio de impares es: $promedioImpares");
  }else{
    print("No se puede sacar  el promedio de impares");
  }

}