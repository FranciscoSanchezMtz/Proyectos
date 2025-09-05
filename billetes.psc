Proceso DispensadoraDeBilletes
	
    // Declarar variables
    Definir monto, i Como Entero
    Definir billetes, inventario, usados Como Entero
	
    Dimension billetes[6]
    Dimension inventario[6]
    Dimension usados[6]
	
    // Denominaciones disponibles (de mayor a menor)
    billetes[1] <- 1000
    billetes[2] <- 500
    billetes[3] <- 200
    billetes[4] <- 100
    billetes[5] <- 50
    billetes[6] <- 20
	
    // Inicializar inventario y usados
    Para i <- 1 Hasta 6 Hacer
        inventario[i] <- 10
        usados[i] <- 0
    FinPara
	
    // Solicitar monto
    Escribir "Ingrese el monto que desea retirar:"
    Leer monto
	
    // Algoritmo para entregar menor cantidad de billetes
    Para i <- 1 Hasta 6 Hacer
        Mientras monto >= billetes[i] Y inventario[i] > 0 Hacer
            monto <- monto - billetes[i]
            inventario[i] <- inventario[i] - 1
            usados[i] <- usados[i] + 1
        FinMientras
    FinPara
	
    // Validar si se pudo dispensar todo el monto
    Si monto > 0 Entonces
        Escribir "No se pudo dispensar el monto solicitado con el inventario disponible."
    Sino
        Escribir "Billetes entregados:"
        Para i <- 1 Hasta 6 Hacer
            Si usados[i] > 0 Entonces
                Escribir usados[i], " billete(s) de $", billetes[i]
            FinSi
        FinPara
    FinSi
	
FinProceso
