people = ['jose', 'magda', 'brigitte', 'angela', 'kathi']

puts "#{people.length} are in the party at #{Time.now}:"
people.each_with_index do |name, index|
  puts "- #{index} => #{name} - #{people[index]}"
end

sleep(5)

people << 'neighbor1'
people << 'neighbor2'

puts "#{people.length} are in the party at #{Time.now}:"
people.each do |name|
  puts "- #{name}"
end

