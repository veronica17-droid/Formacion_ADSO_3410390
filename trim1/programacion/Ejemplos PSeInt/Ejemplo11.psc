Algoritmo bonificacionVentas
	//ANGIE VERONICA CARVAJAL CARDONA
	//EJ.11 Bonificación por ventas realizadas.
	//Se asume cada venta por valor de 30.000
	
	//1.DEFINICION DE VARIABLES
	Definir cantVentas Como Entero;
	Definir porcentajeBonificacion Como Real;
	Definir gananciaTotal Como Real;
	Definir gananciaBonificacion, totalVentas Como Real;
	//2.ASIGNACION DE VARIABLES
	porcentajeBonificacion <- 0;
	//3.PROCESO 
	Escribir "Ingrese el total de ventas";
	Leer cantVentas;
	si (cantVentas >50) Entonces
		Escribir "Felicitaciones! meta superada, recibes 10% bonificación";
		porcentajeBonificacion <- 10;
	FinSi
	totalVentas <- cantVentas *30000;
	gananciaBonificacion <- totalVentas * porcentajeBonificacion /100;
	gananciaTotal <- totalVentas + gananciaBonificacion;
	Escribir "La ganancia total es de: ",gananciaTotal," se obtuvo un total de ",cantVentas," ventas";
	
FinAlgoritmo
