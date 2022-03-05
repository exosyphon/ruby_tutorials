for i in [1,2,3,4,5]
    puts i
end

puts "###########################"

[1,2,3,4,5].each do |i|
    puts i
end

puts "###########################"

[1,2,3,4,5].each_with_index do |i, index|
    puts "i: #{i}, index: #{index}"
end

puts "###########################"

(1..5).each do |i|
    puts i
end

puts "###########################"

5.times do |_|
    puts "hello"
end

puts "###########################"

[1,2,3,4,5].select { |x| x != 3 }.each do |i|
    puts i
end

puts "###########################"

[1,2,3,4,5].map { |x| x + 1 }.each do |i|
    puts i
end
