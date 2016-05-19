class Borough
	def enter()
		puts "This borough is not yet configured. Subclass it and implement enter()."
		exit(1)
	end
end


class Train

	def initialize(borough_map)
		@borough_map = borough_map
	end

	def play()
		current_borough = @borough_map.opening_borough()
		last_borough = @borough_map.next_borough('finished')

		while current_borough != last_borough
			next_borough_name = current_borough.enter()
			current_borough = @borough_map.next_borough(next_borough_name)
		end	

		current_borough.enter()		
	end
end

class Manhattan < Borough

	@@quips = [
		"You chose the easy one!",
		"You died. You kinda suck at this.",
		"The zombies will be everywhere.",
		"Because of you!!!"
	]

	def enter()
		puts @@quips[rand(0..(@@quips.length - 1))]
		exit(1)
	end
end

class Queens < Borough

	def enter()
		puts "The zombies have appeared in NY and have invaded the train you are on."
		puts "You are the last surviving passanger and you have to"
		puts "help to find the cure before this spreads."
		puts "The cure is in the Bronx but you have to put it on Staten Island and blow it up from"
		puts "Brooklyn."
		puts "\n"
		puts "You are running between the train's cars when"
		puts "a zombie junmps out, he is blocking the door"
		puts "and about to bite you."
		puts "> shoot!"
		puts "> dogde!"
		puts "> quote!"
		print "> "

		action = $stdin.gets.chomp

		if action == "shoot!"
			puts " Quick on the draw you yank out your gun and fire it at the zombie."
			puts "But wait you are not allow to bring guns in the subway!!"
			puts "Sorry you are dead. He eats you."
			return 'manhattan'

		elsif action == "dogde!"
			puts "Like a boxer you dodge, weave, slip and slide barely"
			puts "Barely becuse he got your foot and he bite it"
			puts "As you know the virus is on you now"
			puts "You are dead."
			return 'manhattan'

		elsif action == "quote!"
			puts "Lucky for you, you have seen all seasons of adventure time"
			puts "so you tell him one of your favorites quotes:"
			puts "'You are beautiful on the inside. Like... your brain and stuff!'"
			puts "this puts him down and you run to the train at the Bronx."
			return 'bronx'

		else
			puts "DOES NOT COMPUTE!"
			return 'queens'
		end
	end
end

class Bronx < Borough

	def enter()
		puts "Now you are in the Bronx, and serching for more zombies"
		puts "It's super quiet, too quiet. While you are looking for zombies,"
		puts "you found a container with a keypad lock on the box"
		puts "and you need the code to get the cure out. If you get the code"
		puts "wrong 10 times then the lock closes forever and you can't "
		puts "get the cure. The code is 3 digits."
		code = "#{rand(1..2)}#{rand(1..2)}#{rand(1..2)}"
		print "[keypad]> "
		guess = $stdin.gets.chomp
		guesses = 0

		while guess != code && guesses < 9
			puts "BZZZZEDD!"
			guesses += 1
			print "[keypad]> "
			guess = $stdin.gets.chomp
		end

		if guess == code 
			puts "The cointainer clicks open and the seal breaks,"
			puts "You grab the cure and run as fast as you can to the"
			puts "train that goes to Staten Island, you must place it there."
			return 'staten_island'
		else
			puts "The lock buzzes one last time and then you hear a sickening"
			puts "melting sound as the mechanism is fused together."
			puts "You decide to sit there, and the zombies apered and they kill you."
			return 'manhattan'
		end
	end
end

class StatenIsland < Borough

	def enter()
		puts "You are now in Staten Island with the cure"
		puts "under your arm and surprise!! a lot of zombies are comming at you"
		puts ">slowly place the cure"
		puts ">throw the cure"
		print ">"

		action = $stdin.gets.chomp 

		if action == "throw the cure"
			puts "In a panic you throw the cure at the zombies"
			puts "but you didn't release the chemicals"
			puts "one of the zobies got you and you die without knowing"
			puts "if the cure could work"
			return 'manhattan'

		elsif action == "slowly place the cure"
			puts "You see a bunch of zombies aproaching"
			puts "so you open the cure carefully"
			puts "place the cure on the floor."
			puts "They don't even noticed you!"
			puts "Now that the cure is placed you take the train to go to Brooklyn"
			return 'brooklyn'
		else
			puts "DOES NOT COMPUTE!"
			return "staten_island"
		end
	end 
end

class Brooklyn < Borough

	def enter()
		puts "You rush through the train desperately triying to make it to"
		puts "Brooklyn, it seems like"
		puts "hardly any zombies are on the ship, so your run is clear of"
		puts "interference but the train stoped at some unknown station"
		puts "and you don't know what train to get in"
		puts "They are 2, wich one do you take?"

		good_car = rand(1..2)
		print "[car #]> "
		guess = $stdin.gets.chomp.to_i

		if guess != good_car
			puts "You are into a car %s and" % guess
			puts "The train is going the wrong way"
			puts "you are now in Manhattan"
			return 'manhattan'
		else
			puts "You are into car %s and" % guess
			puts "The train is going to the rigth direction"
			puts "you are in Brooklyn and ready to release the cure"
			puts "all over NY"
			puts "You won!"


			return 'finished'
		end
	end
end

class Finished < Borough
	def enter()
		puts "You won! Good job. "
	end
end


class Map
	@@boroughs = {
		'queens' => Queens.new(),
		'bronx' => Bronx.new(),
		'staten_island' => StatenIsland.new(),
		'brooklyn' => Brooklyn.new(),
		'manhattan' => Manhattan.new(),
		'finished' => Finished.new(),
	} 


	def initialize( start_borough)
		@start_borough = start_borough
	end

	def next_borough(borough_name)
		val = @@boroughs[borough_name]
		return val
	end

	def opening_borough()
		return next_borough(@start_borough)
	end
end


a_map = Map.new('queens')
a_game = Train.new(a_map)
a_game.play()