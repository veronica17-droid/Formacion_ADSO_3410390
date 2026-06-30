/*
Eje_5.
Crear las siguientes opciones de una aplicación bancaria.
Cada una de ellas debe ser funcional y cumplir con todas
las validaciones requeridas:

MENU APP BANCARIA
1. Consultar saldo
2. Ingresar fondos
3. Realizar retiro
4. Recarga celular
5. Transferencia a otra cuenta
6. Salir
- La aplicación debe simular un login de usuario
- La aplicación no debe permitir ingresar números negativos
- No pueden haber saldos negativos
- Se debe limpiar pantalla después de cada acción.
 */
import 'dart:io';


void main(List<String> args) {
  double saldoCuenta1 = 300000, saldoCuenta2 = 200000;
  int opcion;
  String usuario = "veronica", contrasena = "1234";
  String usuarioIngresado, contrasenaIngresada, numeroCelular;
  double fondoIngresado, fondoRetirado, cantidadRecarga;
  do {
    print("Ingrese su Usuario");
    usuarioIngresado = stdin.readLineSync()!.trim().toLowerCase();
    print("Ingrese su Contraseña");
    contrasenaIngresada = stdin.readLineSync()!;
    if (usuarioIngresado != usuario && contrasenaIngresada != contrasena) {
      print("Usuario Incorrecto y contraseña incorrectos");
    } else if (usuarioIngresado != usuario) {
      print("Usuario incorrecto");
    } else if (contrasenaIngresada != contrasena) {
      print("Contraseña incorrecta");
    } else {
      print("Acceso concedido");
    }
  } while (contrasenaIngresada != contrasena || usuarioIngresado != usuario);

  void limpiarPantalla() {
    if (Platform.isWindows) {
      Process.runSync("cls", [], runInShell: true);
    } else {
      Process.runSync("clear", [], runInShell: true);
    }
  }

  print("--- MENU APP BANCARIA ---");
  print("1. Consultar saldo");
  print("2. Ingresar fondos");
  print("3. Realizar retiro");
  print("4. Recarga celular");
  print("5. Transferencia a otra cuenta");
  print("6. Salir");
  limpiarPantalla();

  print("Ingrese la opción que desea");
  opcion = int.parse(stdin.readLineSync()!);

  
  switch (opcion) {
    case 1:
      print("Su saldo actual es: $saldoCuenta1");
      break;
    case 2:
      print("Cuánto desea ingresar a su cuenta?");
      fondoIngresado = double.parse(stdin.readLineSync()!);
      while (fondoIngresado <= 0) {
        print(" - - - Ingresó un saldo negativo, intente de nuevo - - - ");
        print("Cuánto desea ingresar a su cuenta?");
        fondoIngresado = double.parse(stdin.readLineSync()!);
      }
      saldoCuenta1 += fondoIngresado;
      print("Su saldo actual es de: \$$saldoCuenta1");
      break;
    case 3:
      print("Cuánto desea retirar de su cuenta?");
      fondoRetirado = double.parse(stdin.readLineSync()!);
      while (fondoRetirado <= 0) {
        print("- - - Ingresó un valor negativo, intente de nuevo - - -");
        print("Cuánto desea retirar de su cuenta?");
        fondoRetirado = double.parse(stdin.readLineSync()!);
      }
      saldoCuenta1 -= fondoRetirado;
      print("Su saldo actual es de: \$$saldoCuenta1");
      break;
    case 4:
      print("Ingrese el número de celular al que desea recargar");
      numeroCelular = stdin.readLineSync()!;
      print("Ingrese la cantidad que desea recargar");
      cantidadRecarga = double.parse(stdin.readLineSync()!);
      while (cantidadRecarga <= 0) {
        print("- - - Ingresó una cantidad negativa, intente de nuevo - - -");
        print("Ingrese la cantidad que desea recargar");
        cantidadRecarga = double.parse(stdin.readLineSync()!);
      }
      print(
        "Usted ha recargado una cantidad de \$$cantidadRecarga al número $numeroCelular",
      );
      break;
    case 5:
      print("Ingrese la cantidad que va a transferir");
      double cantidadTransferencia = double.parse(stdin.readLineSync()!);
      while (cantidadTransferencia <= 0) {
        print("- - - Ingresó una cantidad negativa, intente de nuevo - - -");
        print("Ingrese la cantidad que va a transferir");
        cantidadTransferencia = double.parse(stdin.readLineSync()!);
      }
      saldoCuenta1 -= cantidadTransferencia;
      saldoCuenta2 += cantidadTransferencia;
      print("Su saldo actual es de: \$$saldoCuenta1");
      print(
        "El saldo actual de la cuenta a la cual transfirio es de: \$$saldoCuenta2",
      );
      break;
    default:
      print("Ingrese una opción valida");
      break;
  }
}
