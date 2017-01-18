class Player
  attr_reader :name, :points

  ATTACK_VALUE = 10

  def initialize(name, points=100)
    @name = name
    @points = points
  end

  def attack(player)
    player.recieve_damage
  end

  def recieve_damage
    @points -= ATTACK_VALUE
  end

end
