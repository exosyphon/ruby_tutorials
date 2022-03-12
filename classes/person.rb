class Person
    def initialize
        raise "not allowed"
    end

    def say_hello
        puts "Hello, I am a #{get_class}!"
    end

    def self.say_hello
        puts "Hello, I am a class method"
    end

    private

    def get_class
        self.class.name
    end
end
