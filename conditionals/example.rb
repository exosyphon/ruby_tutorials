if true == false
    puts "did not get here"
end

if true == true
    puts "got here!"
end

if true == false 
    puts "did not get in if"
elsif true == true
    puts "got in elsif"
end

puts "###########################"

input = "match"

case input
when "match"
    puts "got a match!"
when "different match"
    puts "got a different match"
else
    puts "got an else"
end

puts "###########################"
puts "Regex"

regex_input = "match"
case input
when /^ma/
    puts "got a regex match!"
else
    puts "got an else"
end

puts "###########################"

states = {
    "TX" => "Texas",
    "NM" => "New Mexico"
}

puts states["TX"]