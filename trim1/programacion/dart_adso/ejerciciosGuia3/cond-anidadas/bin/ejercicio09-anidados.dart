/*9. El fondo de administración de pensiones requiere clasificar a las personas que se jubilaran en el año
2009. Existen tres tipos de jubilaciones: por edad, por antigüedad joven y por antigüedad adulta. Las
personas adscritas a la jubilación por edad deben tener 60 años o mas y una antigüedad en su empleo
de menos de 25 años.
Las personas adscritas a la jubilación por antigüedad joven deben tener menos de 60 años y una
antigüedad en su empleo de 25 años o más.
Las personas adscritas a la jubilación por antigüedad adulta deben tener 60 años o mas y una
antigüedad en su empleo de 25 años o mas.
Determinar en que tipo de jubilación, quedara adscrita una persona.*/
import 'dart:io';

void main(List<String> args) {
  //DEFINICION DE VARIBALES
    int edad, antiguedadEmpleo;
    //ENTRADA
    stdout.writeln("Ingrese su edad");
    edad = int.parse(stdin.readLineSync()!);
    stdout.writeln("¿Cuántos años de antiguedad lleva en su trabajo?");
    antiguedadEmpleo = int.parse(stdin.readLineSync()!);

    //PROCESO Y SALIDA
    if(edad<60 && antiguedadEmpleo>=25){
      stdout.write("Usted está adscrito a jubilación por antiguedad joven");
    }else if(edad >=60 && antiguedadEmpleo>25){
       stdout.write("Usted está adscrito a jubilación por antiguedad adulta");
    }else{
       stdout.write("Usted está adscrito a jubilación por edad");
    }
}