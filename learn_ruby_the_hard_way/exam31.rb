puts "Estas entrando a un salon con tres puertas, cual numero escojes: 1, 2 o 
3? "

print "> "
puerta = $stdin.gets.chomp

if puerta == "1"
	puts "Aqui hay un oso comiendo un pastel. Que harias? "
	puts "1. Tomar el pastel. "
	puts "2. Gritar como loco. "

	print "> "
	oso = $stdin.gets.chomp

	if oso == "1"
		puts "El oso te arranca la cara. "
	elsif oso == "2"
		puts "El oso se espanta. !Ganaste! "
	else 
		puts "Bueno hacer esto esta mejor. "
	end

elsif puerta == "2"
	puts "Entrate al paraiso de los hongos. "
	puts "1. Fresas. "
	puts "2. Platanos. "
	puts "3. Unicornios. "

	print "> "
	locura = $stdin.gets.chomp

	if locura == "1" || locura == "2"
		puts "Tu cuerpo ha sobrevivido. "
	else
		puts "Perdiste. "
	end

	elsif puerta == "3"
		puts "Te saliste del juego. "
		puts "1. No regresar. "
		puts "2. Regresar. "

	print "> "
	salir = $stdin.gets.chomp

	if salir == "1"
		puts "Lo siento no se puede. "
	elsif salir == "2"
		puts "Ok! "
	else 
		puts "Se acabo. "
	end 

end