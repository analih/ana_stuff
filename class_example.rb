class House

  @@max_number_of_people = 4

  def House.max_number_of_people
    @@max_number_of_people
  end

  def initialize(address)
    @address = address
    @people_living_here = 0
  end

  def say_hello
    puts(@address + " says Hello!")
  end

  def say_number_of_people
    s= @address   + " has " + @people_living_here.to_s + " people living here."
    puts s

  end

  def move_a_person_in
    new_number = @people_living_here + 1
    if new_number <= House.max_number_of_people # 4
      @people_living_here = new_number
    end
  end

end

address1 = "924 Metropolitan ave"
address2 = "123 Fake st"

house1 = House.new(address1)
house2 = House.new(address2)

puts("Max number of people for all houses is " + House.max_number_of_people.to_s)
#puts house1
#puts house2

house1.say_hello
house2.say_hello

house1.say_number_of_people
house2.say_number_of_people

house1.move_a_person_in
house1.move_a_person_in

house1.say_number_of_people

house2.say_number_of_people

house2.move_a_person_in
house2.move_a_person_in
house2.move_a_person_in
house2.move_a_person_in
house2.move_a_person_in
house2.move_a_person_in
house2.move_a_person_in
house2.move_a_person_in
house2.move_a_person_in
house2.move_a_person_in

house2.say_number_of_people


