Algoritmo Ejercicio6
	//Hacer un algoritmo que lea el nombre de un artículo, el valor unitario, la cantidad a comprar y muestre
	//el nombre y el total a pagar.
	
	//DEFINICION DE VARIABLES
	Definir nombreArticulo Como Cadena;
	Definir valorProducto Como Real;
	Definir cantidadAComprar Como Entero;
	Definir totalPago Como Real;
	//ENTRADA
	Escribir "Ingrese el nombre del artículo, su valor y la cantidad que va a comprar";
	Leer nombreArticulo,valorProducto,cantidadAComprar;
	//PROCESO 
	totalPago <- cantidadAComprar*valorProducto;
	//SALIDA 
	Escribir "El nombre del producto es ",nombreArticulo," y su total a pagar es ",totalPago," por ",cantidadAComprar," producto(s)";
FinAlgoritmo
