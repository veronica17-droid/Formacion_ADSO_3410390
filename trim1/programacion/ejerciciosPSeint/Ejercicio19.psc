Algoritmo Ejercicio19
	//ANGIE VERONICA CARVAJAL CARDONA
	//  Pedir dos números y decir si uno es múltiplo del otro.
	//1.DEFINICION DE VARIABLES
	Definir num1 Como Real;
	Definir num2 Como Real;
	//2.ENTRADA
	Escribir "Ingrese un número";
	Leer num1;
	Escribir "Ingrese otro número";
	Leer num2;
	//3.PROCESO 
	Si ((num1%num2)==0) Entonces
		Escribir "El número ",num1," es multiplo del número ",num2;
	SiNo
		Escribir "El número ",num1," no es multiplo del número ",num2;
	FinSi
FinAlgoritmo
