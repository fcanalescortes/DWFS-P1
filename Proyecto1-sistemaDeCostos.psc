Algoritmo sistemaDeCostos
	
	//Definici�n de variables - Dejarlas de manera lineal
	
	Definir cuponDescuento, IVA, descuentoPorCantidad, costoEnvio, peso, costoFinal, precioFinal, valorPeso Como Real
	
	cuponDescuento<-0.1
	IVA<-1.12
	descuentoPorCantidad<-0.05
	costoEnvio<-10
	peso<-3
	valorPeso<-2
	zapatos<-2
	
	Escribir "Estimado Cliente, por favor ingresa el Nombre del Producto: "
	//Validar que el cliente ingrese un nombre para el producto
	
	RespuestaCliente<-""
	Repetir
		Leer RespuestaCliente
	Hasta Que RespuestaCliente <> ""
	
	//Crear un array para el precio original
	
	Dimension precioOriginal[1]
	
	//Realizar ingreso de precios originales  
	Para i<-1 Hasta 1 Con Paso 1 Hacer
		Escribir "Ahora, ingresa el precio original del producto:"
		Leer precioOriginal[i]
	Fin Para
	
	Escribir "�Buenas Noticias! Tienes un cup�n de Descuento de un 10% sobre el precio de tu producto"
	
	Para i<-1 Hasta 1 Con Paso 1 Hacer
		//C�lculo para el cup�n de descuento
		precioInicial<-precioOriginal[i]-(precioOriginal[i]*cuponDescuento)
		
		//Aplicar IVA
		IVAaplicado<-precioInicial*IVA
		
		//Aplicar descuento por cantidad	
		descuento<-IVAaplicado-(IVAaplicado*descuentoPorCantidad)
		
		Escribir "�Veamos si tienes otro regalo!, Por favor ind�canos la cantidad de Productos que vas comprar: "
		Leer Cantidad
		
		Si cantidad>=2 Entonces
			Escribir "�Llevas 2 pares o m�s! Te aplicaremos un descuento de 5%, y cada producto te queda en un valor de $", descuento
			Escribir "Ahora, ind�canos el destino de tu producto: "
			Leer destino
			//calcular costo de env�o	
			envio<-costoEnvio+(valorPeso*peso)
			
			//calculo del precio final 	
			precioFinal<-(descuento*zapatos)+envio
			
			Escribir "*************RESUMEN DE TU COMPRA*************"
			Escribir "Valor inicial del producto: $", precioOriginal[i]
			Escribir "Valor con descuento: $", precioInicial
			Escribir "Valor con IVA: $", IVAaplicado
			Escribir "Descuento aplicado por cantidad: $", descuento
			Escribir "Costo de env�o: $", envio
			Escribir "Valor Final: $", precioFinal
		SiNo
			Escribir "�Llevas 1 par! De momento, solo aplicaremos el cup�n del 10%. Tu producto queda en un valor de $", precioInicial
			Escribir "Ahora, ind�canos el destino de tu producto: "
			Leer destino
			//calcular costo de env�o	
			envio<-costoEnvio+(valorPeso*peso)
			
			//calculo del precio final 	
			precioFinal<-(IVAaplicado*zapatos)+envio
			
			Escribir "*************RESUMEN DE TU COMPRA*************"
			Escribir "Valor inicial del producto: $", precioOriginal[i]
			Escribir "Valor con descuento: $", precioInicial
			Escribir "Valor con IVA: $", IVAaplicado
			Escribir "Descuento aplicado por cantidad: $", descuento
			Escribir "Costo de env�o: $", envio
			Escribir "Valor Final: $", precioFinal
		Fin Si
		
	FinPara
	
FinAlgoritmo
