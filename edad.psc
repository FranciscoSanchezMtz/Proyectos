Proceso CalculadoraEdad
	
    // Declaración de variables
    Definir fechaNac Como Cadena
    Definir diaNac, mesNac, anioNac Como Entero
    Definir diaHoy, mesHoy, anioHoy Como Entero
    Definir edad Como Entero
	
    // Fecha actual (modifica si quieres)
    diaHoy <- 5
    mesHoy <- 9
    anioHoy <- 2025
	
    // Solicitar fecha de nacimiento
    Escribir "Ingresa tu fecha de nacimiento (formato DD-MM-AAAA):"
    Leer fechaNac
	
    // Obtener día, mes y año desde la cadena
    diaNac <- ConvertirANumero(Subcadena(fechaNac, 1, 2))
    mesNac <- ConvertirANumero(Subcadena(fechaNac, 4, 5))
    anioNac <- ConvertirANumero(Subcadena(fechaNac, 7, 10))
	
    // Validar la fecha
    Si anioNac < 1900 Entonces
        Escribir "Error: El año debe ser mayor a 1900."
    Sino
        Si mesNac < 1 O mesNac > 12 Entonces
            Escribir "Error: Mes inválido."
        Sino
            Si diaNac < 1 O diaNac > 31 Entonces
                Escribir "Error: Día inválido."
            Sino
                Si diaNac = 29 Y mesNac = 2 Entonces
                    Escribir "Error: 29 de febrero inválido para este ejercicio."
                Sino
                    // Calcular edad
                    edad <- anioHoy - anioNac
                    Si mesHoy < mesNac O (mesHoy = mesNac Y diaHoy < diaNac) Entonces
                        edad <- edad - 1
                    FinSi
					
                    Escribir "Tu edad es: ", edad, " años."
                FinSi
            FinSi
        FinSi
    FinSi
	
FinProceso

