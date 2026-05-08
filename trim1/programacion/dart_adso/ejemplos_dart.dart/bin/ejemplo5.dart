//OPERADORES

// Operador AND 
import 'dart:io';

void main(List<String> args) {
  bool tieneCarnet = true;
  int edad = 25;

  //Condicion: para ingresar. Ser mayor de edad y tener tieneCarnet

  if (tieneCarnet == true && edad >= 18){
    print("Bienvenido al centro de formación");
  }else{
    print("No se cumple con los requisitos de acceso");
  }

  //Operador OR 
    bool esFestivo = true;
    bool esSabado = false;
    //Condicion: si es sabado o festivo no hay formación
    if(esFestivo==true || esSabado ==true){
      print("No hay formación");
    }

  //Operador NOT 
    bool sistemaCaido = true; 
    if (!sistemaCaido){
      print("El sistema no está caido");
    }else{
      print("El sistema está caido");
    }

    //Operadores Combinados
    //Aprueba si (entregó y sacó más de 3.5)
    //O tiene una excusa válida y puede presentar de nuevo el examen
    double nota = 3.4;
    bool entrego = true;
    bool excusaValida = false;

    if ((entrego ==true && nota >=4) || excusaValida == true){
      if(entrego==true){ //si entregó el examen
        if(nota>=3.5){
          print("Aprueba el examen");
        }else{
          print("No aprueba el examen");
        }
      }else{
        if(excusaValida ==true){
          print("puede presentar el examen en otra fecha");
        }else{
          print("No puede presentar examen");
        }
      }
    }else{
      print("No aprueba ni puede presentar el examen");
    }
}