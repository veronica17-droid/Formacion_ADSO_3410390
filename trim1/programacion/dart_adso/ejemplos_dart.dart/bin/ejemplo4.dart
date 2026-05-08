//CONDICIONALES

//Condicional simple

void main(List<String> args) {
  int edad = 18;
  if (edad >= 18) {
    print("Acceso permitido");
  }

  //Condicional doble
  double valorNota;
  valorNota = 3.8;
  if (valorNota < 3) {
    print("No aprueba la nota");
  } else {
    print("Aprueba la nota");
  }

  //Condicional anidado
  bool tieneCuenta = true;
  double saldo = 450000;
  if (tieneCuenta == true) {
    //se valida si el usuario tiene cuenta
    if (saldo >= 10000) {
      print("Puede retirar dinero");
    } else {
      print("No puede retirar dinero");
    }
  } else {
    print("No tiene cuenta");
  }

  //Condicional Multiple
  String dia = "Martes";
  switch (dia) {
    case "Lunes":
      print("Todos hacen el aseo");
      break;
    case "Martes":
      print("Dejar el repositorio FULL en GitHub");
      break;
    case "Miercoles":
      print("Entrega evidencias");
      break;
    case "Sabado":
    case "Domingo":
      print("No hay formación");
      break;
    default:
    print("Dia normal de formación");
  }
}
