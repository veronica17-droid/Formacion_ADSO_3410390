Algoritmo Ejercicio30
    //ANGIE VERÓNICA CARVAJAL CARDONA
    //Leer dos números y calcular su división, 
    //teniendo en cuenta que el denominador no debe ser 0 (cero)
    Definir num1, num2, resultado Como Real;
    
    Escribir "Ingrese el primer número (dividendo):";
    Leer num1;
    
    Escribir "Ingrese el segundo número (divisor):";
    Leer num2;
    Si num2 <> 0 Entonces
        resultado <- num1 / num2 ;
        Escribir "El resultado de la división es: ", resultado;
    Sino
        Escribir "Error: No se puede dividir por cero.";
    FinSi
    
FinAlgoritmo