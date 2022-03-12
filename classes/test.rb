require_relative 'person'
require_relative 'musician'
require_relative 'juggler'

# person = Person.new
# person.say_hello
# Person.say_hello

musician = Musician.new
musician.say_hello

puts "#################"

other_musician = Musician.new(11)
other_musician.say_hello

puts musician == other_musician

puts "&&&&&&&&&&&&&&&"

juggler = Juggler.new
juggler.say_hello

puts "%%%%%%%%%%%%%%%%%%"

talent_pair_musician = Musician.new(20, [Juggler.new])
talent_pair_musician.say_hello