import 'dart:io';

void main(List<String> args) {
  int estadoTarjeta;
  String rol;
  double hora;

  //Se pide el estado de la tarjeta
  stdout.writeln("Ingrese el estado de su tarjeta. 1.Activa y 0.Inactiva");
  estadoTarjeta = int.parse(stdin.readLineSync()!);
  //Caso Activo.
  if(estadoTarjeta == 1){
    //Se verifica el rol
    stdout.writeln("Digite el rol de su usuario.  (instructor, administrativo o aprendiz). ");
    rol = stdin.readLineSync()!.trim().toLowerCase();
    //Instructores y administrativos. Acceso siempre
    if(rol == "instructor" || rol == "administrativo"){
      stdout.write("TIENE ACCESO 24/7");
    //Aprendices con restricción de horario
    }else if(rol == "aprendiz"){
    //Validación de horario
      stdout.writeln("Ingrese la hora actual en formato militar");
      hora = double.parse(stdin.readLineSync()!);
    //Permiso de acceso
      if(hora>=6 && hora<=18){
        stdout.write("TIENE ACCESO A LOS AMBIENTES DE FORMACIÓN");
      }else{
        stdout.write("ACCESO DENEGADO POR HORARIO NO AUTORIZADO");  
      }
    }
    //caso inactivo
  }else if(estadoTarjeta == 0){
    stdout.write("ACCESO BLOQUEADO");
  }else{
    stdout.write("Ingrese un estado valido");
  }
}