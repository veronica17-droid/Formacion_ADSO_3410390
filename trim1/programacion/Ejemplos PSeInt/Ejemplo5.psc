Algoritmo Ejemplo5
	//Angie Verónica carvajal
	//Ej5: Pedir la edad de una persona. En caso de ser mayor de edad, pedir dos números y sumarlos.
	//de lo contrario, realizar la fórmula: x^2+6*3
	
	
	//DEFINICIÓN DE VARIABLES
	Definir edad Como Entero;
	Definir num1 Como Entero;
	Definir num2 Como Entero;
	Definir resultado como Real;
	
	//ENTRADA
	Escribir "Ingrese su edad";
	Leer edad;
	
	//PROCESO
	Si (edad>=18) Entonces
		Escribir "Ingrese dos números";
		Leer num1, num2;
		resultado<-num1+num2;
		Escribir "La suma de los dos números es ",resultado;
		
	SiNo
		Escribir "Ingrese el valor de x para la fórmula x^2+6*3";
		Leer num1;
		resultado<-(num1^2+6*3);
		Escribir "El resultado de x^2+6*3 es ",resultado;
	FinSi
	
	
	
FinAlgoritmo
