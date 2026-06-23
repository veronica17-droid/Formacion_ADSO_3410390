void main(List<String> args) {
  /*Un sistema de registro en el centro CPIC necesita aignar
  turnos consecutivos a los aprendices del programa ADSO
  que ingresan al laboratorio. Haz un programa que asigne e imprima los números 
  de turno del 1 al 5 usando WHILE
  */
  int turno = 1;
  int limiteTurnos = 5;
  print("Sistema de registro CPIC");
  while (turno <= limiteTurnos) {
    print("Se ha asignado el turno $turno");
    turno ++;
  }
  print("Se han asignado todos los turnos disponibles");
}