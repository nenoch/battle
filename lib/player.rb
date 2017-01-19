class Player
  attr_reader :name, :points

  ATTACK_VALUE = 10

  def initialize(name, points = 100)
    @name = name
    @points = points
  end

  def receive_damage
    @points -= ATTACK_VALUE
  end

end
