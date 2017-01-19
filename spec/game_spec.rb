require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new }
  let(:player2) { double :player2 }

  describe '#attack' do
    it 'attacks the other player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

end
