 t'puts "Hello world!!!"

def say_hello name
  name + " says Hello World!!! Bye!"
end

puts '*'*80

puts "Josh " + "says Hello World!!!"
puts "Ana " + "says Hello World!!!"
puts "Wilfred " + "says hello world!!!"
puts "Zap " + "says hello world!!!"

puts '*'*80

puts say_hello("Josh")
puts say_hello("Ana")
puts say_hello("Wilfred")
puts say_hello("Zap")
