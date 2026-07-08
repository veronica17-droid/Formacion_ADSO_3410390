import "dart:io";

void main() {
  int contadorA = 0;

  print("Comienza a introducir caracteres uno por uno presionando Enter:");

  do {
    String caracter = stdin.readLineSync()!;

    if (caracter.isEmpty) continue; 

    String letra = caracter[0].toLowerCase();

    if (letra == "a") {
      contadorA++;
      print("-> ¡Llevas $contadorA letras 'a'!");
    } else {
      print("El carácter '$letra' no es una 'a'. Intenta de nuevo.");
    }
  } while (contadorA < 10); 

  print("Completaste las 10 letras 'a'! El programa ha terminado.");
}