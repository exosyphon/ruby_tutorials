if true == false
    puts "did not get here"
end

if true == true
    puts "got here"
end

puts "##################"

if true == false
    puts "did not get here"
elsif true == false
    puts "did get here elsif"
else
    puts "got else"
end

puts "##################"

input = "different match"
case input
when "match"
    puts "we got a match"
when "different match"
    puts "we got a different match"
else
    puts "got base case"
end

puts "##################"
puts "regex match"

input = "match"
case input
when /^mat/
    puts "we got a regex match"
else
    puts "got base case"
end

puts "##################"
states = {
    "TX" => "Texas",
    "NM" => "New Mexico",
}

puts states["TX"]