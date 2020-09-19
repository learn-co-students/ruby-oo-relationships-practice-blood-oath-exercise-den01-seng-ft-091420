require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ben = Follower.new "Ben", 19, "Lets get wet"
jeff = Follower.new "Jeff", 28, "Lets get dry actually"
keith = Follower.new "Keith", 98, "Im not allowed to be wet"
lamar = Follower.new "Lamar", 31, "I have become wet, by no fault of my own"
lisa = Follower.new "lisa", 10, "Saxophone noises"

cult1 = Cult.new "Pool", "Houston", 1980, "wet"
cult2 = Cult.new "Space Cult", "Luxembourg", 1810, "yes"
cult3 = Cult.new "SoulCycle", "New York", 2010, "weee"
cult4 = Cult.new "Eeeeee", "New York", 2011, "cool stuff folks"

# ben.join_cult cult1, 8-20-19
# lamar.join_cult cult1, 3-4-17
# lamar.join_cult cult2, 2-1-14

Bloodoath.new cult1, ben, 2015
Bloodoath.new cult1, lamar, 2000
Bloodoath.new cult2, lamar, 2010

binding.pry

# Follower.of_a_certain_age 31

puts "Mwahahaha!" # just in case pry is buggy and exits