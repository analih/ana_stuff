def salon_del_unicornio
	puts "Haz encontado un unicornio! "
	puts "Puedes hacer esto con el: "
	puts "volar"
	puts "Pedir un deseo."

	print "> "
	eleccion = $stdin.gets.chomp

	if eleccion.include? "volar"
		salon_de_la_momia
	elsif eleccion.include? "deseo"
		dead("Perdon los unicornios no conceden deseos.")
	else
		start
	end
end


def salon_de_la_momia
	puts "Por eso se te aparece una momia."
	puts "Esta a punto de atacarte!! "
	puts "Que haces, atacar o salir? "

	print "> "
	eleccion = $stdin.gets.chomp

	if eleccion == "atacar"
		dead("La momia es muy fuerte, lo siento.")
	elsif eleccion == "salir"
		start
	else
		salon_de_la_momia
	end
end


def dead(ok)
    puts ok, "Buen trabajo! "
    exit(0)
end


def start 
	puts "Hola te gustaria jugar un juego? "
	puts "1. si "
	puts "2. no "

	print "> "
	eleccion = $stdin.gets.chomp

	if eleccion == "1"
		salon_del_unicornio
	elsif eleccion == "2"
		salon_de_la_momia
	else
	    dead("Esta bien ya entendi que no quieres jugar!")
	end
end

	start 