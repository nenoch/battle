require 'player'

describe Player do
  subject(:player) {described_class.new("Oscar")}
  it 'returns it name' do
    expect(subject.name).to eq "Oscar"
  end

end
