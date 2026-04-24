Algoritmo Ejemplo5
	//Angie Verónica carvajal
	//Ej6: Realizar un algoritmo que solicite el nombre de un producto y valor.
	//Luego debe adivinar un número, si selecciona el número correcto se le aplica un 
	//descuento del 10%, de lo contrario paga el precio normal, al final mostrar cuanto debe pagar.
	
	
	//DEFINICIÓN DE VARIABLES
	Definir nombreProducto Como Cadena;
	Definir valorProducto Como Real;
	Definir numeroIngresado Como Entero;
	Definir resultado como Real;
	Definir numeroGanador Como Entero;;
	
	//ENTRADA
	Escribir "Ingrese el nombre del producto y su valor";
	Leer nombreProducto, valorProducto;
	Escribir "Ingrese un número para ganar un descuento";
	Leer numeroIngresado;
	
	//PROCESO
	numeroGanador<-45;
	Si (numeroIngresado==numeroGanador) Entonces
		resultado<- (valorProducto*0.90);
		Escribir "Se le ha aplicado un descuento del 10% por elegir el número ganador, debe pagar ",resultado;
		
	SiNo
		Escribir "No tiene descuento, debe pagar ",valorProducto;
	FinSi
	
	
	
FinAlgoritmo
