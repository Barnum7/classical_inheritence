module Flight
	def fly
		puts "I can fly!"
	end
end

class Animal
	def initialize(name)
		@name = name
	end

	def say_name
		puts @name
	end
end

class Mammal < Animal
	def has_hair?
		true
	end

	def warm_blooded?
		true
	end
end

class Amphibian < Animal
	def cold_blooded?
		true
	end

	def can_live_on_land?
		true
	end

	def can_live_on_water?
		true
	end
end

class Primate < Mammal 
	def use_tools
		puts "Did you know I can use tools?"
	end
end

class Frog < Amphibian 
	def can_jump
		puts "I can jump!"
	end
end

class Bat < Mammal 
	include Flight

	def sucks_blood
		puts "I suck blood!"
	end
end

class Parrot < Animal
	include Flight

	def has_feathers
		true
	end
end

class Chimpanzee < Primate 
	friends = ["Jane","Tarzan"]
end

test_1 = Chimpanzee.new('George')
puts test_1.has_hair?
test_2 = Parrot.new('Tucan Sam')
puts test_2.say_name
test_3 = Bat.new('Bruce')
test_3.sucks_blood
test_3.fly