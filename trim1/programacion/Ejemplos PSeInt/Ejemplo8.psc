Algoritmo descuentoProducto
	//ANGIE VERONICA CARVAJAL CARDONA
	//Ej6. Comprar un prodcuto con el 25% de descuento
	//1.DEFINICION DE VARIBALES
	Definir nombre como cadena;
	definir valorProd, descuento, valorFinal Como Real;
	//2.ENTRADA
	Escribir "Ingrese el nombre del prodcuto";
	Leer nombre;
	Escribir "Ingrese el valor del producto";
	Leer valorProd;
	//3.PROCESO 
	//descuentp <- valorProd * 25 / 100 //Regla de 3
	descuento <- valorProd *0.25; //25
	valorFinal <- valorProd-descuento;
	//4.SALIDA
	Escribir "El producto ",nombre," tuvo un descuento de ",descuento," y su valor final es ",valorFinal;
FinAlgoritmo
