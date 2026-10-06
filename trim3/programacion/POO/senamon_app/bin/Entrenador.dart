class Entrenador {
  String _nombre;
  String _email;
  DateTime _fechaNto;
  int _nivelXP;
  int _batallasGanadas;
  //constructor
  Entrenador(this._nombre, this._email, this._fechaNto, this._nivelXP, this._batallasGanadas);

  //Métodos SET y GET
  void setNombre(String nom){
    _nombre = nom;
  }
  String getNombre(){
    return _nombre;
  }
  void setEmail(String newEmail){
    _email = newEmail;
  }
  String getEmail(){
    return _email;
  }
  void setFechaNto(DateTime newFechaNto){
    _fechaNto = newFechaNto;
  }
  DateTime getFechaNto(){
    return _fechaNto;
  }

  //Métodos - Reglas del negocio
  bool validacionXP(){
    if (_nivelXP >= 200) {
      return true;
    }else{
      return false;
    }
  }
}