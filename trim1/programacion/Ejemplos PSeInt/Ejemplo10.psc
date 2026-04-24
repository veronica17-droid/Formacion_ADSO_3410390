Algoritmo alertaSaldoBajo
	//ANGIE VERONICA CARVAJAL CARDONA
	//Ej10. 
	//1.DEFINICION DE VARIBALES
	Definir saldo Como Real;
	definir recarga Como Real;
	//2.INICIALIZACION DE VARIBALES
	recarga <- 0;
	//3.ENTRADA
	Escribir "Ingrese el valor de su saldo";
	Leer saldo;
	si (saldo < 20000) Entonces
		Escribir "Su saldo es critico, se realizará una reacarga automática de $100.000";
		recarga <-100000;
	FinSi
	saldo <- saldo+recarga;
	Escribir "Su saldo es de ",saldo;
FinAlgoritmo
