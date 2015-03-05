cards = ["Jack", "Queen", "King", "Ace", "Joker"]

scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

desserts = { "chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25 }

#cards.shuffle.each { |card| puts "#{card.upcase} - #{card.length}" }

#cards.reverse_each { |card| puts "#{card.upcase} - #{card.length}" }

#scores.each { |name, score| puts "#{name} scores a #{score}" }

desserts.each { |type, price| puts "$#{price*2} for a cup of #{type}." }
