first_guest = {
  name: "jose",
  gift: "club mate"
}


puts first_guest[:name] # => "jose"
puts first_guest[:gift] # => "club mate"

first_guest[:gift] = "coca cola"

puts first_guest[:gift] # => "coca cola"


second_guest = {
  name: "henry",
  gift: "coca-cola"
}

guest_list = [first_guest, second_guest]
p guest_list

