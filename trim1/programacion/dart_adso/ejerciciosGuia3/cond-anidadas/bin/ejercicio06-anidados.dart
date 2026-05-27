/*6. El dueño de una empresa desea planificar las decisiones financieras que tomara en el Siguiente año.
La manera de planificarlas depende de lo siguiente:
Si actualmente su capital se encuentra con saldo negativo, pedirá un préstamo bancario para que su
nuevo saldo sea de $1000000. Si su capital tiene actualmente un saldo positivo pedirá un préstamo
bancario para tener un nuevo saldo de $2000000, pero si su capital tiene actualmente un saldo
superior a los $2000000 no pedirá ningún préstamo.
Posteriormente repartirá su presupuesto de la siguiente manera.
• $500000 para equipo de computo
• $200000 para mobiliario
• y del resto, la mitad será para la compra de insumos y la otra para otorgar incentivos al personal.
Solicitar el capital y en base a este desplegar que cantidades se destinaran para la compra de insumos
e incentivos al personal y, en caso de que fuera necesario, a cuanto ascendería la cantidad que se
pediría al banco.*/

import 'dart:io';

void main(List<String> args) {
  //DEFINICION DE VARIABLES
  double saldoInicial, saldoActual, saldoFinal, insumos, incentivos, prestamo;
  
  //ENTRADA
  stdout.writeln("Ingrese su saldo actual");
  saldoInicial = double.parse(stdin.readLineSync()!);
  saldoActual = saldoInicial; 
  prestamo = 0;

  //PROCESO
  if(saldoInicial < 0){
    saldoActual = 1000000;
    prestamo = saldoActual - saldoInicial; 
    stdout.writeln("Pidió un préstamo de \$$prestamo, ahora su saldo es \$$saldoActual");
  }else if(saldoInicial > 0 && saldoInicial <= 2000000){ 
    saldoActual = 2000000;
    prestamo = saldoActual - saldoInicial;
    stdout.writeln("Pidió un préstamo de \$$prestamo, ahora su saldo es \$$saldoActual");
  }else{
    stdout.writeln("No pidió ningún préstamo, su saldo es \$$saldoActual");
  }

  saldoFinal = saldoActual - 700000; 
  insumos = saldoFinal / 2;
  incentivos = saldoFinal / 2; 
  
  //SALIDA
  stdout.writeln("Cantidad para la compra de insumos: \$$insumos");
  stdout.writeln("Cantidad para incentivos al personal: \$$incentivos");
}
