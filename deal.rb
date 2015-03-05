def deal(num_of_cards)
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  # call the block here
  if block_given?
  	num_of_cards.times do
  		random_face = faces.sample
  		random_suit = suits.sample	
  		result = yield(random_face, random_suit)
  		puts "You scored a #{result}"
  	end
  else
  	puts "No deal"
  end
end

deal(5) do |face, suit|
	puts "Dealt a #{face} of #{suit}"
	face.length + suit.length
end



def progress
	0.step(100, 10) { |x| yield(x) }
end

progress { |percent| puts percent }


def greet
	yield("Fuck", "18", "23", 25)
end

greet { |name, age| puts "Hello, #{name}. You don't look #{age}!" }