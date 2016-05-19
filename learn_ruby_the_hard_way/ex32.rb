the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quartes']

#this firts kind of for-loop goes through a list 
#in more traditional style found in other languages 
the_count.each do |number|
	puts "This is count #{number} "
end

#same as above, but in a more Ruby style
#this and the next one are the preferred
#way Ruby for-loops are written
fruits.each do |fruit|
	puts "A fruit of type: #{fruit}"
end

#also we can go thruogh mixed lists too
#note this is yet another style, exactly like above
#but a diffence syntax (way to write it).
change.each {|i| puts "I got #{i}" }

#we can also build lists, first start with an empy one 
elements = []

#then use the range operator to 0 to 5 counts
(0..5).each do |i| 
	puts "adding #{i} to the list. "
	#pushes the i variable on the *end* of the list 
	elements << i
end 

# now we can print them out too
elements.each {|i| puts "Element was: #{i}" }

