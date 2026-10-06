import 'dart:io';

void main(List<String> arguments) {
  bool salir = false;
  while (!salir) {
    print("====== BIENVENIDOS AL MUNDO SENAMON ======");
    print("1. Registrar un ENTRENADOR");
    print("2. Ver podio entrenadores y estadisticas");
    print("3. Entrenar un SENAMON");
    print("4. Sustituir un SENAMON");
    print("5. Iniciar batalla");
    print("6. Gestionar mundo SENAMON");
    print("7.SALIR");
    print("___________________________________________");
    print("Ingrese una opción del menú");
    int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
    switch (opcion == 7) {
      case 1:
        moduloEntrenadores();
        break;
      case 2:
        moduloPodioEstadisticas();
        break;
      case 3:
        moduloEntrenarSenamon();
        break;
      case 4:
        sustituirSenamon();
        break;
      case 5:
        moduloIniciarBatalla();
        break;
      case 6:
        moduloGestionarMundoSenamon();
        break;
      case 7:
      salir = true;
        break;
      default:
      print("Opcion no valida!");
    }
  }
  
}

void moduloEntrenadores() {
  print("- - - Módulo de Entrenadores - - -");
  print("1. Registrar Entrenador");
  print("2. Listar Entrenadores");
  print("3. Consultar entrenador");
  print("4. Salir");
  print("Ingrese una opción valida");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  switch (opcion) {
    case 1:
      registrarEntrenador();
      break;
    case 2:
      
      break;
    case 3:
      
      break;
    case 4:
      
      break;
    default:
  }
}

void registrarEntrenador() {
  print("Ingrese el NOMBRE del entrenador");
  String nombre = stdin.readLineSync()!;
  print("Ingrese el EMAIL del entrenador");
  String email = stdin.readLineSync()!;
  print("Ingrese la FECHA DE NACIMIENTO del entrenador");
  DateTime fechaNto = DateTime.tryParse(stdin.readLineSync() ?? "")?? DateTime.now();
  int nivelXP = 0;
  int batallasGanadas = 0;
}

void moduloPodioEstadisticas() {
}
void moduloEntrenarSenamon() {
}
void sustituirSenamon() {
}
void moduloIniciarBatalla() {
}
void moduloGestionarMundoSenamon() {
}





