Algoritmo Ejercicio10
	//Hacer un algoritmo que lea el alto y el ancho de un rectángulo y muestre su área y su perímetro. 
	
	//DEFINICIÓN DE VARIABLES
	Definir alto Como Real;
	Definir ancho Como Real;
	Definir area Como Real;
	Definir perimetro Como Real;
	//ENTRADA
	Escribir "Ingrese el ancho de un rectángulo";
	Leer ancho;
	Escribir "Ingrese el largo del rectángulo";
	Leer alto;
	//PROCESO 
	area <- ancho*alto;
	perimetro <- (2*ancho)+(2*alto);
	//SALIDA
	Escribir "El área del rectángulo es ",area,", su perímetro es ",perimetro;
FinAlgoritmo
