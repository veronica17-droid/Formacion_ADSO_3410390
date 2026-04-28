Algoritmo Ejercicio28
	//ANGIE VERÓNICA CARVAJAL CARDONA
	// Un trabajador recibe su pago, según la cantidad de horas trabajadas y su valor. Si la cantidad de
	//horas trabajadas es mayor que 40, éstas se consideran horas extra, y tienen un incremento de $10000
    //(diez mil) sobre el valor de la hora. Calcular y mostrar el salario (pago) del trabajador. Nota: leer horas
	//trabajadas y valor de la hora.
	
	//DEFINICIÓN DE VARIABLES
	Definir pago, pagoFinal Como Real;
	Definir horasTrabajadas Como Real;
	Definir valorHorasTrabajadas Como Real;
	//ENTRADA 
	Escribir "Ingrese cuántas horas trabajó";
	Leer horasTrabajadas;
	Escribir "Ingrese el valor de las hora por trabajo";
	Leer valorHorasTrabajadas;
	//PROCESO
	pago<-horasTrabajadas*valorHorasTrabajadas;
	si (horasTrabajadas>40) Entonces
		pagoFinal<-pago+(10000*horasTrabajadas);
		Escribir "Ha hecho horas extras, por lo tanto tiene un incremento de $10000 por hora trabajada y su pago es ",pagoFinal;
	SiNo
		Escribir "No hizo horas extras, su pago es ",pago;
	FinSi
	
FinAlgoritmo
