def add(a, b)
	puts "ADDING #{a} + #{b} "
	return a + b 
end

def sustract(a, b)
	puts "SUBTRACTING #{a} - #{b} "
	return a - b 
end 

def multiply(a, b)
	puts "MYLTIPLYING #{a} * #{b} "
return a * b 
end 

def divide(a, b)
	puts "DIVIDING #{a} / #{b} "
	return a / b 
end 


puts "Let's do some math with just functions! "

age = add(30, 5)
height = sustract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq} "


# A puzzle for the extra credit, type it in anaway.
puts "Here is a puzzle."

what = add(age, sustract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?" 
