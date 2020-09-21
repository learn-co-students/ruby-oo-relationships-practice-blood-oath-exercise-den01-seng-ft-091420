class Cult
    attr_reader :name, :location, :founding_year, :slogan 

    @@all = []

    def initialize name, location, founding_year, slogan
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower follower, date
        Bloodoath.new(self, follower, date)
    end

    #helper method to access info about specific cult
    def all_oaths
        Bloodoath.all.select {|oath| oath.cult == self}
    end

    def cult_population
        all_oaths.length
    end

    def self.find_by_name name
        all.find {|cult| cult.name == name}
    end

    def self.find_by_location location
        all.select {|cult| cult.location == location}
    end

    def self.find_by_year year
        all.select {|cult| cult.founding_year == year}
    end

    def followers
        all_oaths.map {|oath| oath.follower}
    end

    def average_age
        followers.reduce(0) do |ages, follower|
            ages += follower.age.to_f
        end/ followers.count.to_f
    end
    # def average_age
    #     # cult_oaths = self.all_oaths
    #     # followers_ages = cults_oaths.map {|oath| oath.follower}.map {|follower| follower.age}
    #     # sum_ages = followers_ages.reduce(0) do |sum, age|
    #     #     sum + age.to_f
    #     # end
    #     # sum_ages / self.cult_population
    # end

    def my_followers_mottos
        #without followers helper method, the code would include 63 & 64
        # cult_oaths = self.all_oaths
        # followers = cult_oaths.map {|oath| oath.follower}
        followers.map {|follower| follower.life_motto}
    end

    # def self.least_followers
    #     Bloodoath.all.map {|oath| oath.cult}
    #     cult.name
    # end

# Cult.least_followers
    # def most_common_location
    # end
end