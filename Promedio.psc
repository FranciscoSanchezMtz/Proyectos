
	Proceso Promedio
		// Solicitar al usuario la cantidad de datos que desea capturar
		Escribir "Ingrese la cantidad de datos:"
		Leer n
		
		// Inicializar una variable donde acumularemos la suma de todos los datos
		acumulador<-0
		
		// Solicitar cada uno de los datos con la estructura de control for
		Para i<-1 Hasta n Hacer
			// Solicitar al usuario el dato correspondiente
			Escribir "Ingrese el dato ",i,":"
			// Capturar la respuesta del usuario en la variable "dato"
			Leer dato
			// Sumar la respuesta al acumulador
			acumulador<-acumulador+dato
		FinPara
		
		// Dividir la suma de todos los datos introducidos por el usuario entre el número
		//total de elementos
		prom<-acumulador/n
		
		// Mostrar el resultado
		Escribir "El promedio es: ",prom
		
FinProceso

