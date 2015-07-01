require './dogs.rb'

dog1= Dog.new("papel", 5)
dog2= Dog.new("rufo", 3)

dog1.bark # => "papel says woof!"
dog2.bark # => "rufo says woof!"

dog1.print_age
dog1.has_a_birthday
dog1.print_age

wilfred = Dog.new("Wilfred", -10) # => "you can't make a dog -10"

wilfred.print_age # => 1

wilfred.guess_age(4) # => "No, that's too old."
wilfred.guess_age(5) # => "No, that's too old."
wilfred.guess_age(-1) # => "No, that's too young."
wilfred.guess_age(1) # => "I'm tired. Can we talk later."
wilfred.guess_age(100) # => "I'm tired. Can we talk later."

puts "*"*80
puts "ZAP!!!"
zap = Dog.new("Zap", 6)

zap.print_age # => 6

zap.guess_age(4) # => "No, that's too young."
zap.guess_age(6) # => "Yes, I'm 6."
zap.guess_age(-1) # => "You already know my age!"
zap.guess_age(1)  # => "I'm tired. Can we talk later."
zap.guess_age(100) # => "I'm tired. Can we talk later."

zap.take_a_nap

zap.guess_age(4) # => "You already know my age!"
zap.guess_age(6) # => "You already know my age!"
zap.guess_age(-1) # => "You already know my age!"
zap.guess_age(1)  # => "I'm tired. Can we talk later."



