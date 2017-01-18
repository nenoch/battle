require 'capybara/rspec'

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our Names and seeing them
feature 'sign up to play' do

  scenario 'allows players to start a fight by entering their Names and seeing them' do
    # Capybara.default_driver = :selenium
    sign_in_and_play
    expect(page).to have_content 'Oscar vs Will'
  end
end

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature 'see Player 2\'s hit points' do

  scenario 'Player 1 wants to see how close they are to winning' do
    sign_in_and_play
    expect(page).to have_content 'HP : 100    HP : 100'
  end
end

# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
feature 'attack Player 2' do

  scenario 'Player 1 wants to attack Player 2 and get a confirmation' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content 'You are attacking!...'
  end
end
# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10
#
# As two Players,
# So we can continue our game of Battle,
# We want to switch turns
#
# As Player 1,
# So I can see how close I am to losing,
# I want to see my own hit points
#
# As Player 1,
# So I can lose a game of Battle,
# I want Player 2 to attack me, and I want to get a confirmation
#
# As Player 1,
# So I can start to lose a game of Battle,
# I want Player 2's attack to reduce my HP by 10
#
# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first
