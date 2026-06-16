import 'dart:io';

void main(List<String> args) {
  /*VARIABLES ACUMULADORAS
  PARTE 1. Se rquiere saber cuanto dinero se
  recoge entre un grupo de aprendices que
  ahorra $1.000 semanales. Se debe solicitar el total de aprendices y por cada aprendiz se rquiere saber si paga multa por llegar tarde (valor de $500)
  y multa por no hacer el aseo($300). Se debe saber al final cuanto se recogió en total
  PARTE 2. Al ejercicio anterior, incluir cuantos aprendices no hicieron el aporte semanal
  PARTE 3. Modificar el mismo ejercicio para que se haga por 4 semanas 
  PARTE 4. Mostrar el total de cada semana y decir cuál fue la sema que más se recogió dinero
   */
  double dineroRecogido = 0;
  int cantAprendices;
  int aseo, tarde, aporte, maxima = 0;
  double multaAseo = 300 , multaTarde = 500, aporteSemanal = 1000, aprendicesNoAporte = 0;
  double semanaMax = 0;

  stdout.writeln("Ingrese la cantidad de aprendices");
  cantAprendices = int.parse(stdin.readLineSync()!);
  for (var i = 0; i <4; i++) {
    print(" - - - SEMANA ${i+1} - - -");
    for (var i = 0; i < cantAprendices; i++) {
      stdout.writeln("-- Aprendiz ${i+1} --");
      stdout.writeln("Paga multa por No hacer aseo? (1. SI  2. NO)");
      aseo = int.parse(stdin.readLineSync()!);
      if(aseo == 1){
        dineroRecogido += multaAseo;
      }
      stdout.writeln("Paga multa por llegar tarde? (1. SI  2. NO)");
      tarde = int.parse(stdin.readLineSync()!);
        if(tarde == 1){
        dineroRecogido += multaTarde;
      }
      stdout.writeln("Dio el aporte semanal? (1. SI  2. NO)");
      aporte = int.parse(stdin.readLineSync()!);
      if(aporte == 1){
        dineroRecogido += aporteSemanal; 
      }else if(aporte == 2){
        aprendicesNoAporte ++;
      }
    }
    
    stdout.writeln("EL DINERO RECOGIDO ESTA SEMANA FUE: $dineroRecogido");
    stdout.writeln("LA CANTIDAD DE APRENDICES QUE NO HICIERON EL APORTE SEMANAL FUE: $aprendicesNoAporte");
    double semanas = dineroRecogido;
    if(semanas > semanaMax){
      semanaMax = semanas;
      maxima = i+1;
    }
  }
  
    stdout.writeln("LA SEMANA CON MÁS GANANCIA FUE $maxima");
  


}