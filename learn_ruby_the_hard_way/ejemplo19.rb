def uvas_y_fresas(cantidad_de_uvas, cajas_de_fresas)
	puts "Tu tienes #{cantidad_de_uvas} uvas! "
	puts "Tu tienes #{cajas_de_fresas} fresas! "
	puts "Son muchas frutas! "
	puts "Haz una ensalada.\n"
end 


puts "Podemos ponerles numeros a la funcion directamente: "
uvas_y_fresas(20, 30)


puts "O podemos usar variables de nuestro escrito"
cuantas_uvas = 10
cuantas_fresas = 50

uvas_y_fresas(cuantas_uvas, cuantas_fresas)


puts "Podemos hacer matematicas tambien: "
uvas_y_fresas(10 + 20, 5 + 6)


puts "Y tambien podemos combinar las dos, variables y matematicas: "
uvas_y_fresas(cuantas_uvas + 100, cuantas_fresas + 1000)

