class Follower
    attr_reader :name, :age, :life_motto
    @@all = []

    def initialize name, age, life_motto
        @name = name 
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def self.all
        @@all
    end

    def all_oaths #helper method
        Bloodoath.all.select do |oath|
            oath.follower == self
        end #call using ted.cults
    end

    def cults
        all_oaths.map do |oath|
            oath.cult
        end #call using ted.all_oaths
    end

    def join_cult(cult, initiation_date)
        Bloodoath.new(cult, self, initiation_date)
    end

end