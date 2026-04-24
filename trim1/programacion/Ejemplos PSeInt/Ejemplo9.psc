Algoritmo descuentoAplicado
	//ANGIE VERONICA CARVAJAL CARDONA
	//Ej9. Solicitar al ususario: nombre y valor del producto. Se debe solicitar el porcentaje de descuento
	//Mostar cuanto debe pagar y cuál fue el descuento
	//1.DEFINICION DE VARIBALES
	Definir nombre como cadena;
	definir valorProd, descuento, valorFinal Como Real;
	//2.ENTRADA
	Escribir "Ingrese el nombre del prodcuto";
	Leer nombre;
	Escribir "Ingrese el valor del producto";
	Leer valorProd;
	Escribir "Ingrese el descuento";
	Leer descuento;
	//3.PROCESO 
	valorFinal <- valorProd*descuento/100;
	//4.SALIDA
	Escribir "El producto ",nombre," tuvo un descuento de ",descuento,"% y su valor final es ",valorFinal;
FinAlgoritmo
