import 'dart:io';

import 'clases/empleado.dart';

List<Empleado> listaEmpleados = [];
void main(List<String> args) {
  menuPrincipal();
}
void menuPrincipal(){
  int opcion;
  do {
  print("="*80);
  print("BIENVENIDO APP GESTIÓN EMPLEADOS");
  print("1. Agregar Empleados");
  print("2. Mostrar Empleados");
  print("3. Calcular Bonificación");
  print("4. Cambiar puesto");
  print("5. Simular paso de año");
  print("6. Aumentar salario");
  print("7. Cambiar datos empleado");
  print("8. Salir");
  print("="*80);
  opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
// Switch
switch (opcion) {
    case 1:
      agregarEmpleados();
      break;
    case 2:
      mostrarEmpleados();
      break;
    case 3:
      calcularBonificacion();
      break;
    case 4:
      cambiarPuesto();
      break;
    case 5:
      simularPasoAnio();
      break;
    case 6:
      aumentarSalario();
      break;
    case 7:
      cambiarDatosEmpleados();
      break;
    case 8:
      print("Saliste");
    default:
  }//Cierra el switch

  } while (opcion !=7);
  
}



void cambiarDatosEmpleados() {
  mostrarEmpleados();
  print("Que empleado desea cambiarle la  información");
  int indiceEmpleado = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print("Ingrese el nuevo nombre del empleado");
  String newNombre = stdin.readLineSync()!;
  print("Ingrese la edad del empleado");
  int newEdad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print("Ingrese el nuevo nombre del empleado");
  listaEmpleados[indiceEmpleado - 1].setNombre( newNombre,); //SE CAMBIA EL NOMNBRE DEL OBJETO
  listaEmpleados[indiceEmpleado - 1].setEdad(newEdad,); //SE CAMBIA LA EDAD DEL OBJETO
  print("El nuevo nombre es: ${listaEmpleados[indiceEmpleado - 1].getNombre()}",);
  print("La nueva edad es: ${listaEmpleados[indiceEmpleado - 1].getEdad()}");
}

void aumentarSalario() {
  mostrarEmpleados();
  print("A qué empleado desea aumentarle el salario?");
  int indiceEmpleado = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  print("Ingrese el nuevo salario del empleado");
  double newSalario = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
  listaEmpleados[indiceEmpleado-1].setSalario(newSalario);
  print("El nuevo salario de: ${indiceEmpleado} es ${listaEmpleados[indiceEmpleado-1].getSalario()} ");
}
void simularPasoAnio() {
  
}
void cambiarPuesto() {
  mostrarEmpleados();
  print("A que empleado desea cambiarle el puesto");
  int indiceEmpleado = int.tryParse(stdin.readLineSync()!) ?? 0;
  int indice = indiceEmpleado -1;
  print("Ingrese el nuevo cargo/puesto");
  String newPuesto = stdin.readLineSync()!;
  listaEmpleados[indiceEmpleado-1].setPuesto(newPuesto);
  print("El nuevo puesto es: ${listaEmpleados[indiceEmpleado-1].getPuesto()}");
}

void calcularBonificacion() {
  for (var i = 0; i < listaEmpleados.length; i++) {
    double bonificacionEmpleado = listaEmpleados[i].calcularBonificacion();
    String nombre = listaEmpleados[i].getNombre();
    print("_"*70);
    print("La bonificación para el empleado: $nombre es de $bonificacionEmpleado");
  }
}

void mostrarEmpleados() {
  for (var element in listaEmpleados) {
    element.mostrarInformacion();
  }
}

void agregarEmpleados() {
  print("Cuál es el nombre de la persona");
  String nombre = stdin.readLineSync()!;
  print("Cuál es la edad de la persona");
  int edad = int.tryParse(stdin.readLineSync() ?? '')?? 0;
  print("Cuál es el salario del empleado");
  double salario = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
  print("Cuál es el puesto del empleado");
  String puesto = stdin.readLineSync()!;
  print("Cuál es el tipo de contrato del empleado");
  String tipoContrato = stdin.readLineSync()!.toLowerCase();

  //Se crea un objeto de la clase empleado
  Empleado newEmpleado = Empleado(nombre, edad, salario, puesto, tipoContrato);
  listaEmpleados.add(newEmpleado);
}

