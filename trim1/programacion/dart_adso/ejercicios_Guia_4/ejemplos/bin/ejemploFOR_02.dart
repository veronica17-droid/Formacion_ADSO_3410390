import 'dart:io';

void main(List<String> args) {
  int sumaTotal = 0; 
  for (int i = 1; i <= 10; i++) {
    print("Ingrese el número $i:");
    
    int num = int.parse(stdin.readLineSync()!);
    
    sumaTotal += num; 
  }
  print("\nLa suma de los 10 números es: $sumaTotal");
}