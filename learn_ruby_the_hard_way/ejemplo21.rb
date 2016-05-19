def fresas_y_moras(a, b)
	puts "Fresas y moras #{a} + #{b} "
	a + b 
end

def licuados_y_platanos(a, b)
	puts "Platanos  #{a} - #{b} "
	 a - b 
end 

def frutas_varias(a, b)
	puts "Combo #{a} * #{b} "
	a * b
end 

ensalada = fresas_y_moras(4, 6)
licuados = licuados_y_platanos(10, 5)
combinar = frutas_varias(8, 9)

puts "El puesto tiene ensalada con #{ensalada} de frutas, licuados con #{licuados} platanos y #{combinar} combinaciones"

total = fresas_y_moras(ensalada, licuados_y_platanos(licuados, frutas_varias(combinar, 2)))

puts "Esto es el total: #{total}"

