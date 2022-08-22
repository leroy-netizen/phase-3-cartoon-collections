def roll_call_dwarves(arr)
  arr.map do |p|
    puts "#{arr.index(p)+1}. #{p}"
  end
end

# roll_call_dwarves(["Doc", "Dopey", "Bashful", "Grumpy"])

def summon_captain_planet(arr)
  capitalized = arr.map do |call|
    call.capitalize + "!"
  end
  return capitalized
end

# p summon_captain_planet(["earth", "wind", "fire", "water", "heart"])

def long_planeteer_calls(arr)
  avail = arr.find do |word|
    word.length > 4
  end
  if avail.class == String
    return true
  else
    return false
  end
end

# puts long_planeteer_calls(["two", "go", "industrious", "bop"])
# puts long_planeteer_calls(["puff", "go", "two"])

# def find_the_cheese(arr)
#   finder = arr.find do |snack|
#     snack == "cheddar" || snack == "gouda" || snack == "camembert"
#   end
#   finder
# end

def find_the_cheese(arr)
  cheese_types = ["cheddar", "gouda", "camembert"]
  finder = cheese_types.find do |type|
    arr.include?(type)
  end
  finder
end

puts find_the_cheese(["crackers", "gouda", "thyme"])
puts find_the_cheese(["tomato soup", "cheddar", "oyster crackers", "gouda"])
puts find_the_cheese(["garlic", "rosemary", "bread"])