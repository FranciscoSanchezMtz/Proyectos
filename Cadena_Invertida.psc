Algoritmo Cadena_Invertida
    Definir cadena, invertida Como Cadena
    Definir i, tam Como Entero
    Definir esPalindromo Como Logico
	
    Escribir "Ingresa una cadena de texto:"
    Leer cadena
	
    tam <- Longitud(cadena)
    invertida <- ""
	
    Para i <- tam Hasta 1 Con Paso -1
        invertida <- invertida + SubCadena(cadena, i, i)
    FinPara
	
    Escribir "Cadena invertida: ", invertida
	
    Si cadena = invertida Entonces
        esPalindromo <- Verdadero
    Sino
        esPalindromo <- Falso
    FinSi
	
    Escribir "¿Es palíndromo?: ", esPalindromo
FinAlgoritmo
