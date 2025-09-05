Proceso MaquinaExpendedora
    Definir comando, producto Como Cadena
    Definir total, moneda, precio Como Entero
    total <- 0
    
    Escribir "Bienvenido a la máquina expendedora"
    
    Repetir
        Escribir "Ingrese comando (moneda 1, 2, 5, 10, 20 | código producto A1, B2... | RETIRAR | PARA):"
        Leer comando
        
        // Intentar convertir a número si es posible
        moneda <- ConvertirANumero(comando)
		
        Si moneda = 1 O moneda = 2 O moneda = 5 O moneda = 10 O moneda = 20 Entonces
            total <- total + moneda
            Escribir "Total ingresado: $", total
        Sino
            // Validar comandos
            Si comando = "RETIRAR" Entonces
                Escribir "Operación cancelada. Devolviendo $", total
                total <- 0
            Sino
                Si comando = "PARA" Entonces
                    Escribir "Fin del programa."
                Sino
                    // Supongamos que todos los productos cuestan 15
                    precio <- 15
                    Si total >= precio Entonces
                        total <- total - precio
                        Escribir "Producto ", comando, " dispensado. Cambio: $", total
                        total <- 0
                    Sino
                        Escribir "Fondos insuficientes. Ingresado: $", total, " | Precio: $", precio
                    FinSi
                FinSi
            FinSi
        FinSi
    Hasta Que comando = "PARA"
FinProceso
