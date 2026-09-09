class Persona{
  //Atributos de la clase
  String nombre;
  String apellido;
  int edad;
  double peso;
  //IMC


  //constructor
  Persona(this.nombre, this.apellido, this.edad, this.peso);

  void mostrarNombreCompleto(){
    print("${this.nombre} ${this.apellido}");
  }
  void esMayorEdad(){
    if (this.edad >= 18) {
      print("Es mayor de edad");
    }else{
      print("Es menor de edad");
    }
  }
  void estadoSalud(){
    if(this.peso < 18.5){
      print("Tiene bajo peso");
    }else if(){
      
    }
  }
}
void main(List<String> args) {
  // S e crea un objeto
  var persona1 = Persona("Verónica", "Carvajal", 19, 1);
  persona1.mostrarNombreCompleto();
  persona1.esMayorEdad();
  var persona2 = Persona("Sary", "Carvajal", 17, 200);
  print("*"*50);
  persona2.mostrarNombreCompleto();
  persona2.esMayorEdad();
}