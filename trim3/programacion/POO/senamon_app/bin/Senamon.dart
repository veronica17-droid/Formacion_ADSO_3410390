class Senamon {
  String _nombre;
  int _puntosSalud;
  int _puntosAtaque;
  double _peso;
  String _tipoSenamon;
  //constructor
  Senamon(
    this._nombre, this._puntosSalud, this._puntosAtaque, this._peso, this._tipoSenamon);

  //Métodos SET y GET de cada atributo
  void setNombre(String nom){
    _nombre = nom;
  }
  String getNombre(){
    return _nombre;
  }
  //Métodos de negocio
  void aumentarSalud(int puntos){
    _puntosSalud = _puntosSalud + puntos;
  }
  void aumentarAtaque(int puntos){
    _puntosSalud += puntos;
  }
}