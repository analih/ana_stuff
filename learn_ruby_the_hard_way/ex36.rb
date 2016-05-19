 def salon_del_unicornio
 	puts "Haz encontrado un unicornio!"
 	puts "Puedes hacer esto con el: "
 	puts "volar"
 	puts "Pedir un deseo"

 	print "> "
 	eleccion = $stdin.gets.chomp

 	if eleccion.include? "volar"
 		salon_del_unicornio
 	elsif eleccion.include? "deseo" 
 	    dead("Perdon los unicornios no cumplen deseos.")
    else
    	start
    end
end
 	

 def salon_de_la_momia
   puts "Por esa razon se te aparece una momia!!"
   puts "Ahora esta a punto de atacarte... "
   puts "Que harias, atacar o salir?"

   print "> "
   eleccion = $stdin.gets.chomp

   if eleccion == "atacar"
 	dead("La momia es muy fuerte, lo siento")
   elsif eleccion == "salir"
 	salon_de_la_momia
   else
 	puts "No te entiendo."
   end
end

def dead(ok)
 	puts ok, "Buen trabajo!"
 	exit (0)
 end

def start
	puts "Hola te gustaria jugar un juego?"
	puts "1. Si"
	puts "2. No"

print ">"
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