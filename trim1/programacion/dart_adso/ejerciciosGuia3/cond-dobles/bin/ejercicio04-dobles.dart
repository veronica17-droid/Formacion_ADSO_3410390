/*4. Una empresa de bienes raíces ofrece casas de interés social, bajo las siguientes condiciones: Si los ingresos del comprador son mayores o iguales a $800000 la cuota inicial será del 15% del costo de la casa y el resto se distribuirá en pagos mensuales, a pagar en diez años. Si los ingresos del comprador son inferiores a de $800000 la cuota inicial será del 30% del costo de la casa y el resto se distribuirá en pagos mensuales a pagar en 7 años. La empresa quiere saber cuanto debe pagar un comprador por concepto de cuota inicial y cuanto por cada pago mensual ingresando el valor de la casa. */
import 'dart:io';

void main(List<String> args) {
  //DEFINICION DE VARIABLES
  double ingresosComprador, precioCasa, cuotaInicial, pagosMensuales;
  //ENTRADA
  stdout.writeln("¿Cuánto cuesta la casa?");
  precioCasa = double.parse(stdin.readLineSync()!);
  stdout.writeln("¿De cuánto son los ingresos del comprador?");
  ingresosComprador = double.parse(stdin.readLineSync()!);
  //PROCESO
  if (ingresosComprador>= 800000){
    cuotaInicial = precioCasa * 0.15;
    pagosMensuales = (precioCasa - cuotaInicial) / 120;
    stdout.writeln("Por concepto inicial debe pagar $cuotaInicial y por cada pago mensual \$$pagosMensuales");
  }else{
    cuotaInicial = precioCasa * 0.30;
    pagosMensuales = (precioCasa - cuotaInicial) / 84;
    stdout.writeln("Por concepto inicial debe pagar $cuotaInicial y por cada pago mensual \$$pagosMensuales");

  }
}