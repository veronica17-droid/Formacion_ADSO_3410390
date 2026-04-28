Algoritmo Ejercicio25
	//ANGIE VERÓNICA CARVAJAL CARDONA
	//Pedir una nota de 0 a 5 y mostrarla de la forma: Insuficiente (0 ? 2,9), Suficiente (3 ? 4,5) y Bien (4,6
	//? 5)
	
	//DEFINICIÓN DE VARIABLES
	Definir nota Como Real;
	
	//ENTRADA 
	Escribir "Ingrese su nota de 0 a 5";
	Leer nota;
	
	//PROCESO
	Si (nota>=0 & nota <= 2.9)Entonces
		Escribir "Insuficiente";
	SiNo
		si (nota<=4.5) Entonces
			Escribir "Suficiente";
		SiNo
			Si (nota>=4.6 & nota<=5) Entonces
				Escribir "Bien";
			SiNo
				Escribir "Ingrese una nota valida";
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo
