class Player
def initialize
  @gold_coins = 0
  @health_points = 10
  @lives = 5
end

def level_up
  @lives += 1
end

def collect_treasure
  @gold_coins += 1
  if @gold_coins % 10 == 0
    return level_up
  else
    @gold_coins
  end
end

def do_battle(damage)
  @health_points = @health_points - damage
  if @health_points < 1
    @lives -= 1
    @health_points =10
    "#{@lives}#{@health_points}"
    if @lives <= 0
      return restart
    end
  else
    @health_points
  end
end

def restart
  @gold_coins = 0
  @health_points = 10
  @lives = 5

end
def myplay
  puts "gold coin =#{@gold_coins} health points =#{@health_points} lives =#{@lives} "

end
end

myplayer=Player.new
puts myplayer.do_battle(3)
puts myplayer.do_battle(3)
puts myplayer.do_battle(5)
puts myplayer.collect_treasure
puts myplayer.myplay
