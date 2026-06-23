import 'dart:io';

void main(List<String> args) {
  /*Para un modulo del proyecto de identificacion fisica y digital,
  necesitas validar un PIN de seguridad de 4 digitos.
  Escribe un programa que simule el ingreso de contraseñas de un usuario
  Mientras el PIN ingresado se incorrecto,
  el sistema debe denegar el acceso*/
  String pinCorrecto = "9220";
  String pinIngresado;
  bool accesoConcedido = false;
  int intentos = 1;

  while (intentos <= 3 && accesoConcedido == false) {
    print("Ingrese la contraseña de acceso");
    pinIngresado = stdin.readLineSync()!;
    
    if (pinIngresado == pinCorrecto) {
      print("Contraseña correcta");
      accesoConcedido = true;
    }else{
      print("Contraseña incorrecta, intente nuevamente");
    }
    intentos ++;
    if (intentos > 3) {
      print("Acceso denegado");
    }

  } 
}