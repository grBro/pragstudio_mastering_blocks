class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []
1.upto(5) do |x|
	flyers << Flyer.new("Flyer #{x}", "flyer#{x}@email.com", x * 1000)
end

# Name - how mush miles
flyers.each { |x| puts "#{x.name} - #{x.miles_flown} miles" }

#Total miles
total = 0
flyers.each { |x| total += x.miles_flown }
puts "Total miles flown: #{total}"


# Bonus miles promotions
promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }

promotions.each { |name, bonus| puts "Earn #{bonus}x miles by flying #{name}!" }

# Combine two iterators to print out the miles each flyer would 
# earn by switching to each airline
flyers.each do |x|
  promotions.each do |name, bonus|
   puts "#{x.name} could earn #{x.miles_flown * bonus} miles by flying #{name}!"
 end
end