Algoritmo Ejercicio21
	//ANGIE VERONICA CARVAJAL CARDONA
	// Pedir dos números y decir cuál es el mayor o si son iguales.
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
		Escribir "El número ",num1," es el mayor de los números";
	SiNo
		Si  (num1<num2) Entonces
			Escribir "El número ",num2," es el mayor de los dos números";
		SiNo
			Escribir "Los números son iguales";
		FinSi
	FinSi
FinAlgoritmo
