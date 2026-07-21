void main(List<String> args) {
  //Declaración o definición de un Vector
List<int> numeros; //DECLARACIÓN DE UN VECTOR NUMÉRICO
List<int> numeros2 = []; //DECLARACIÓN DE UN VECTOR NUMÉRICO "CORCHETES ES UN VECTOR VACIO"

//DECLARACIÓN DE UN VECTOR CON VALORES INICIALES
List<int> edadesAprendices = [17,16,18,20,22,19,24];

//IMPRIMIR UN ELEMENTO DEL ARRAY (ARREGLO)
print("Edad del tercer aprendiz (Posición 2)");
print(edadesAprendices[2]);

print("Edad del primer aprendiz");
print(edadesAprendices[0]);

//VECTOR DE TIPO STRING
List<String> frutas = ["Mango", "pera", "Papaya", "Piña"];
print(frutas[2]); //IMPRIME PAPAYA
print(frutas[3]); //IMPRIME PIÑA
frutas[1] = "Manzana"; //SE REMPLAZA EL ELEMENTO POS 1
print(frutas); //MANGO, MANZANA, PAPAYA, PIÑA

//IMPRIMIR LOS ELEMENTOS DE UN VECTOR
  for (var i = 0; i < 4; i++) {
    print(frutas[i]); //IMPRIMIR CADA ELEMENTO DEL VECTOR
  }

  print("Cantidad de frutas> ${frutas.length}"); //MUESTRA 4
  for (var i = 0; i < frutas.length; i++) {
    print(frutas[i]); //IMPRIME CADA ELEMENTO DEL VECTOR 
  }

  //METODOS PARA MANIPULAR LISTAS - ADD REMOVE
  List<double> estaturas = [1.70, 1.40, 1.95, 1.30];
  estaturas.add(1.65);
  estaturas.add(1.72);
  estaturas.add(1.75);
  print("Cantidad de elementos vector: ${estaturas.length}");
  estaturas.removeAt(2); // SE ELIMA EL ELEMENTO DE UNA POSICION DADA
  print(estaturas); //[1.70, 1.40, 1.30, 1.65, 1.72, 1.75]
  estaturas.remove(1.30); // SE ELIMA EL ELEMENTO DE UNA POSICION
  print(estaturas);
  
  print(estaturas.elementAt(4)); //1.75

  print(estaturas.reversed);//IMPRIME LOS ELEMENTOS AL CONTRARIO
  print(estaturas.last); //SE IMPRIME EL ULTIMO ELEMENTO DE LA LISTA
  print(estaturas.first); //SE IMPRIME EL PRIMER ELEMNTO
  print(estaturas.reversed.last); //
}