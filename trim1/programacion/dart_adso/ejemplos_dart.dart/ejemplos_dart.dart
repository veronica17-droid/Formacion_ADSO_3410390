import 'dart:io';

void main(List<String> arguments) {
//Escribe el mensaje en la consola
print('Hello world!');

//TIPOS DE VARIABLES

//Definición de una variable tipo cadena
String programaFormacion = 'Analisis y Desarrollo de Software';

//Definición de una variable tipo entero
int cantidadAprendices = 20;

//Definición de una variable tipo real
double promedioNotasGrupo = 3.7;

//Definición de una variable tipo booleano o lógica
bool estaActivo = true; //True o False

// Definición de Constante, se asigna el tiempo de compilación, no se puede modificar
const PI = 3.1416; 

//Definición de constantes que se asignan en tiempo de ejecución, no se pueden modificar
final fechaActual = DateTime.now();

print(programaFormacion); //Imprime el valor de la variable programaFormacion
print("----------------"); //imprime texto
print("Programa de formación: $programaFormacion"); //Imprime el texto y el valor de la variable programaFormacion
print("cantidad de aprendices: $cantidadAprendices"); //Imprime el texto y el valor de la variable cantidadAprendices
print("Promedio de notas: $promedioNotasGrupo"); //Imprime el texto y el valor de la variable promedioNotasGrupo
print("Está activo: $estaActivo"); //Imprime el texto y el valor de la variable estaActivo
print("Valor de PI: $PI y la fecha actual: $fechaActual"); //Imprime el texto y el valor de la constante PI y la variable fechaActual  

/*Operaciones de LEER (obtener datos del usuario) 
y ESCRIBIR (mostrar datos al usuario en pantalla)*/

String? nombre; //Variable que permite nudos
int edad; //Variable tipo entero
double peso; //Variable tipo real

stdout.writeln("Bienvenido a nuestra App "); //Escribe el mensaje en la consola sin salto de línea

stdout.writeln("¿Cuál es tu nombre?"); //Escribe el mensaje en la consola sin salto de línea
nombre = stdin.readLineSync(); //Lee el dato ingresado por el usuario

stdout.writeln(" ¿Cuál es tu edad? "); //Escribe el mensaje en la consola sin salto de línea
edad = int.parse(stdin.readLineSync()!); //Lee el dato ingresado por el usuario y lo convierte a entero

stdout.writeln(' ¿Cual es su peso? ');
peso = double.parse(stdin.readLineSync()!); //Lee el dato ingresado por el usuario y lo convierte a real

stdout.writeln(" Hola $nombre, tu edad es $edad años y tu peso es $peso kg "); /*Escribe el mensaje en la consola con el valor de las
variables nombre, edad y peso*/
}