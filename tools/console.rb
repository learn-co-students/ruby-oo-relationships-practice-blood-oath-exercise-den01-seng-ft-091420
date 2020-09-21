require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# ben = Follower.new "Ben", 19, "Lets get wet"
# jeff = Follower.new "Jeff", 28, "Lets get dry actually"
# keith = Follower.new "Keith", 98, "Im not allowed to be wet"
# lamar = Follower.new "Lamar", 31, "I have become wet, by no fault of my own"
# lisa = Follower.new "lisa", 10, "Saxophone noises"

# cult1 = Cult.new "Pool", "Houston", 1980, "wet"
# cult2 = Cult.new "Space Cult", "Luxembourg", 1810, "yes"
# cult3 = Cult.new "SoulCycle", "New York", 2010, "weee"
# cult4 = Cult.new "Eeeeee", "New York", 2011, "cool stuff folks"

# ben.join_cult cult1, 8-20-19
# lamar.join_cult cult1, 3-4-17
# lamar.join_cult cult2, 2-1-14

# Bloodoath.new cult1, ben, 2015
# Bloodoath.new cult1, lamar, 2000
# Bloodoath.new cult2, lamar, 2010

keystone = Cult.new('keystone', 'dillon',1800, 'full send')
breck = Cult.new('breck', 'frisco',1900, 'powder day')
vail = Cult.new('vail', 'eagle',2000, 'groomers')
bc = Cult.new('bc', 'eagle',2010, 'lift line')

adam = Follower.new('adam', 18, 'just do it')
bill = Follower.new('bill', 20, 'get rich')
chris = Follower.new('chris',22, 'be happy')
dan = Follower.new('dan', 24, 'im dope and i do dope things')
evan = Follower.new('evan',26, 'protect and serve')
greg = Follower.new('greg',28, 'who am i')

oath1 = Bloodoath.new(keystone, adam, '2019/1/1')
oath2 = Bloodoath.new(breck, bill, '2020/1/2')
oath3 = Bloodoath.new(vail, chris, '2020/1/1')
oath4 = Bloodoath.new(bc, dan,'2020/1/1')
oath5 = Bloodoath.new(keystone, evan, '2020/1/1')
oath6 = Bloodoath.new(breck, greg,'2020/1/5')
oath7 = Bloodoath.new(vail, adam,'2020/1/5')
oath8 = Bloodoath.new(bc, bill,'2020/1/5')
oath9 = Bloodoath.new(keystone, chris, '2020/1/5')
oath10 = Bloodoath.new(breck, dan, '2020/1/13')
oath11 = Bloodoath.new(vail, evan, '2020/1/5')
oath12 = Bloodoath.new(keystone, dan, '2020/12/1')
oath13 = Bloodoath.new(keystone, greg, '2020/10/1')
oath14 = Bloodoath.new(vail, bill, '2020/11/15')
oath15 = Bloodoath.new(vail, dan, '2020/9/5')
binding.pry

# Follower.of_a_certain_age 31

puts "Mwahahaha!" # just in case pry is buggy and exits