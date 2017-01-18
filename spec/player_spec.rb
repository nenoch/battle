require 'player'

describe Player do

  subject(:p1) { Player.new("Oscar")}
  subject(:p2) { Player.new("V")}

  describe '#name' do
    it 'returns it\'s name' do
      expect(p1.name).to eq "Oscar"
    end
  end

  describe '#points' do
    it 'returns the number of points' do
      expect(p1.points).to eq 100
    end
  end

  describe '#attack' do
    it 'attack the other player' do
      p1.attack(p2)
      expect(p1.points).to eq 90
    end
  end
  
end
