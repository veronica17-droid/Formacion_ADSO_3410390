Algoritmo Ejercicio29
	//ANGIE VERÓNICA CARVAJAL CARDONA
	//Dado un monto, calcular el descuento considerando que por encima de 100 el descuento es del 10%
	//y por debajo de 100, el descuento es del 2%.
    Definir monto, descuento, total Como Real;
    
    Escribir "Ingrese el monto a pagar:";
    Leer monto;
    Si monto > 100 Entonces
        descuento <- monto * 0.10 ; 
    Sino
        descuento <- monto * 0.02 ; 
    FinSi
    
    total <- monto - descuento;
    
    Escribir "El descuento aplicado es: $", descuento;
    Escribir "El total a pagar con descuento es: $", total;
FinAlgoritmo