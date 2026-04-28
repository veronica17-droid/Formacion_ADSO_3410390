Algoritmo Ejemplo24
	//ANGIE VERONICA CARVAJAL CARDONA
	// Pedir un número entre 0 y 9.999 y decir cuántas cifras tiene.

	//DFINICIÓN DE VARIABLES
	Definir num Como Real;
	//ENTRADA
	Escribir "Ingrese un número entre 0 y 9.999";
	Leer num;
	//Proceso 
	si (num<=9) Entonces
		Escribir "El número tiene una cifra";
	SiNo
		Si (num<=99) Entonces
			Escribir "El número tiene dos cifras";
		SiNo
			Si (num<=999) Entonces
				Escribir "El número tiene tres cifras";
			SiNo
				Si (num<=9999) Entonces
					Escribir "El número tiene cuatro cifras";
				SiNo
					Si (num2>=num3 y num3>=num1) Entonces
						Escribir "El número está fuera del limite";
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
