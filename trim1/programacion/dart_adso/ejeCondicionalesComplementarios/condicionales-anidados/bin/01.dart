import 'dart:io';

void main(List<String> args) {
  int estadoTarjeta;
  String? rol;

  stdout.writeln("Ingrese el estado de la tarjeta RFID (0. Inactiva y 1. Activa)");
  estadoTarjeta = int.parse(stdin.readLineSync()!);
  
  if (estadoTarjeta == 1) {
  stdout.writeln("Ingrese su rol. (instructor, aprendiz, administrativo)");
  rol = stdin.readLineSync()!.trim().toLowerCase();
    if(rol == "instructor"){
      stdout.write("Acceso total a todos los bloques");
    }else if(rol == "aprendiz"){
      stdout.write("Acceso limitado a los ambientes de formación");
    }else if(rol == "administrativo"){
      stdout.write("Acceso a los bloques administrativos");
    }else{
      stdout.write("Su rol no existe dentro del sistema");
    }
  } else {
    print("Acceso denegado");
  }
}
