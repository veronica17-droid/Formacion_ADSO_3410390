Algoritmo Ejercicio22
    // Definición de variables
    Definir num1, num2 Como Real;
    
    // Entrada
    Escribir "Ingrese un número:";
    Leer num1;
    Escribir "Ingrese otro número:";
    Leer num2;
    
    // Proceso y Salida
    Si (num1 > num2) Entonces
        Escribir "Los números ordenados de mayor a menor son: ", num1, " y ", num2;
    SiNo
        Si (num2 > num1) Entonces
            Escribir "Los números ordenados de mayor a menor son: ", num2, " y ", num1;
        SiNo
            Escribir "Los números son iguales: ", num1;
        FinSi
    FinSi
FinAlgoritmo
