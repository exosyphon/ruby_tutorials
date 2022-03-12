module Juggling
    def initialize
    end
    
    def juggle 
        "I know how to juggle!"
    end
end

class Juggler < Person
    include Juggling

    def say_hello
        super
        puts juggle
    end
end