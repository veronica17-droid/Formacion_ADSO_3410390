Algoritmo Ejercicio20
	//ANGIE VERONICA CARVAJAL CARDONA
	// Pedir dos números y decir cuál es el mayor.
	//1.DEFINICION DE VARIABLES
	Definir num1 Como Real;
	Definir num2 Como Real;
	//2.ENTRADA
	Escribir "Ingrese un número";
	Leer num1;
	Escribir "Ingrese otro número";
	Leer num2;
	//3.PROCESO 
	Si (num1>num2) Entonces
		Escribir "El número ",num1," es mayor que el número ",num2;
	SiNo
		Si  (num1<num2) Entonces
			Escribir "El número ",num1," es mayor que el número ",num2;
		SiNo
			Escribir "Los números son iguales";
		FinSi
	FinSi
	
FinAlgoritmo
