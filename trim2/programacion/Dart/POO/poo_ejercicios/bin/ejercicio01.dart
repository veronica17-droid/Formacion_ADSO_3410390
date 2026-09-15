import 'dart:io';

class Empleado{
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  // Constructor
  Empleado(this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato);

  //métodos
  void aumentarSalario(double porcentaje){
    salario = salario +(salario*(porcentaje/100));
  }
  void cumplirAnios(){
    edad ++ ;
  }
  String cambiarPuesto(String nuevoPuesto){
    puesto = nuevoPuesto;
    return puesto;
  }
  void mostrarInformacion(){
    print("Nombre: $nombre");
    print("Salario: $salario");
    print("Edad $edad");
    print("Puesto $puesto");
  }
  double calcularBonificacion(){
    if (tipoContrato == "contratista") {
      return 
    }
  }
}
void main(List<String> args) {
  List<Empleado> arrayEmpleados = [];
  int cantidadEmpleados = 0;
  cantidadEmpleados = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  for (var i = 0; i < cantidadEmpleados; i++) {
    print("Datos para el empleado #${i+1}");
    print("Ingrese el nombre: ");
    String nombreTxt = stdin.readLineSync() ?? "";
    print("la edad: ");
    int edadTxt = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
    print("Salario: ");
    double salarioTxt = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
    print("Puesto: ");
    String puestoTxt = stdin.readLineSync() ?? "";
    print("Tipo de contrato: (Contratista, Temporal, Indefinido)");
    String tipoContratoTxt = stdin.readLineSync() ?? "".toLowerCase();

    Empleado persona = Empleado(nombreTxt, edadTxt, salarioTxt, puestoTxt, tipoContratoTxt);
    arrayEmpleados.add(persona);
    
  }
  for (var i = 0; i < arrayEmpleados.length; i++) {
    arrayEmpleados[i].mostrarInformacion();
  }
}