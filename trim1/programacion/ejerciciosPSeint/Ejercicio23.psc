Algoritmo Ejemplo23
	//ANGIE VERONICA CARVAJAL CARDONA
	//Pedir tres números y mostrarlos ordenados de mayor a menor
	//DFINICIÓN DE VARIABLES
	Definir num1, num2, num3 Como Real;
	//ENTRADA
	Escribir "Ingrese el número 1";
	Leer num1;
	Escribir "Ingrese el número 2";
	Leer num2;
	Escribir "Ingrese el número 3";
	Leer num3;
	//Proceso 
	si (num1>=num2 y num2>=num3) Entonces
		Escribir "Los números ordenados de mayor a menor son: ",num1,", ",num2,", ",num3;
	SiNo
		Si (num3>=num1 y num1>=num2) Entonces
			Escribir "Los números ordenados de mayor a menor son: ",num3, ", ",num1, ", ",num2;
		SiNo
			Si (num2>=num1 y num1>=num3) Entonces
				Escribir "Los números ordenados de mayor a menor son: ",num2, ", ",num1, ", ",num3;
			SiNo
				Si (num1>=num3 y num3>=num2) Entonces
						Escribir "Los números ordenados de mayor a menor son: ",num1, ", ",num3, ", ",num2;
				SiNo
					Si (num2>=num3 y num3>=num1) Entonces
						Escribir "Los números ordenados de mayor a menor son: ",num2, ", ",num3, ", ",num1;
					SiNo
						Escribir "Los números ordenados de mayor a menor son: ",num3, ", ",num2, ", ",num1;
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo