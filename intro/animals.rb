class Animal
    def say
        "Hello!"
    end

    def type
        "Mammals"
    end        
end

class Dog < Animal
    def say
        "Woof!"
    end
end

class Fox < Animal
    def say
        "WeewEE"
    end
end

puts Animal.new.say
puts Dog.new.say
puts Fox.new.say
puts Animal.new.type
puts Dog.new.type
puts Fox.new.type




