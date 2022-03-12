class Musician < Person
    attr_accessor :songs_known

    def initialize(songs_known = 11, other_talent = [])
        @songs_known = songs_known
        @other_talent = other_talent
    end

    def say_hello
        super
        puts "I also know #{songs_known} songs!"
        other_talent.each { |talent| puts talent.say_hello }
    end

    def eql?(other)
        self.songs_known == other.songs_known
    end
    alias :== eql?

    def hash
        songs_known.hash
    end

    private

    attr_reader :other_talent
end