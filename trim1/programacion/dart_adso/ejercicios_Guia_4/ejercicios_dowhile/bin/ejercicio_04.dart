import 'dart:io';

void main() {
  int primaria = 0, secundaria = 0, tecnica = 0, profesional = 0, posgrado = 0;
  int total = 0;
  String continuar; 

  do {
    print('1. Primaria\n2. Secundaria\n3. Carrera Técnica\n4. Profesional\n5. Posgrado');
    stdout.write('Seleccione una opción (1-5): ');
    
    int opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1: 
        primaria++; total++; 
      break;
      case 2: 
        secundaria++; total++; 
      break;
      case 3: 
        tecnica++; total++; 
      break;
      case 4: 
        profesional++; total++; 
      break;
      case 5: 
        posgrado++; total++; 
      break;
      default: 
      print('Opción no válida.');
    }

    stdout.write('Desea ingresar otra encuesta?: (s= si, n= no)');
    continuar = stdin.readLineSync()!.toLowerCase();

  } while (continuar == 's');

  print('Total de personas encuestadas: $total');

  if (total > 0) {
    print('Primaria: ${(primaria * 100) / total}%');
    print('Secundaria: ${(secundaria * 100) / total}%');
    print('Carrera Técnica: ${(tecnica * 100) / total}%');
    print('Profesional: ${(profesional * 100) / total}%');
    print('Posgrado: ${(posgrado * 100) / total}%');
  } else {
    print('No se ingresaron datos.');
  }
}