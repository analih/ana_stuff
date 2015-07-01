class Dog

  def initialize(name, age)
    if age < 1
      puts "you can't make a dog " + age.to_s
    end

    @name = name

    if age < 1
      @age = 1
    else
      @age = age
    end

    @times = 0

    @guessed_age_correctly = false
  end

  def take_a_nap
    puts "zzz"
    @times = 0
  end

  def guess_age(guess)
    @times = @times + 1
    # puts "This is the " + @times.to_s + " guess."
    if @times > 3
      puts "I'm tired. Can we talk later."
    elsif @guessed_age_correctly
      puts "You already know my age!"
    elsif guess == @age
      @guessed_age_correctly = true
      puts "Yes, I'm " + @age.to_s + "."
    elsif guess > @age
      puts "No, that's too old "
    else
      puts "No, that's too young."
    end
  end

  def has_a_birthday
    @age = @age + 1
  end

  def print_age
    puts @age
  end

  def bark
    puts @name + " says woof!"
  end

end

