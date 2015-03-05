class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)


# frequent_flyers = flyers.select { |x| x.miles_flown >= 3000  }
# puts frequent_flyers

# low_frequent_flyers = flyers.reject { |x| x.miles_flown >= 3000  }
# puts low_frequent_flyers

# puts flyers.any? { |x| x.status == :platinum }

# puts flyers.detect { |x| x.status == :bronze }

# platinum, powerty = flyers.partition { |x| x.status == :platinum}
# p platinum
# p powerty

# tags = flyers.map { |x| "#{x.name} (#{x.status.upcase})"  }
# puts tags

# kilometers = flyers.map { |x| x.miles_flown * 1.6  }
# puts kilometers

# total_miles = flyers.map { |x| x.miles_flown }.reduce(0, :+)
# puts total_miles

# total_kilometers = flyers.map { |x| x.miles_flown * 1.6 }.reduce(0, :+)
# puts total_kilometers

total_bronze_kilo =  flyers.select { |x| x.status == :bronze }.map { |x| x.miles_flown * 1.6 }.inject(:+)
puts total_bronze_kilo

big_miles = flyers.max_by { |x| x.miles_flown }
puts big_miles