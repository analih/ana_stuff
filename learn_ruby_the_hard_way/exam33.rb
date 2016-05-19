camas = 0
numbers = []

while camas < 5 
	puts "al princupio la cama es #{camas} "
	numbers.push(camas)

	camas += 2
	puts "tenemos ahora : ", numbers 
	puts "al final es #{camas} "
end 

puts "los numeros: "

#remember you can write this 2 other ways?
numbers.each {|num| puts num }


letras = [] 

(2..7).each do |i| 
puts "adding #{i} to the list."
letras.push(i) 
end  

letras.each {|i| puts "Letras era #{i}" }