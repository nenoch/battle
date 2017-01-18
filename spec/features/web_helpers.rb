def sign_in_and_play
  visit ('/')
  fill_in :player1name, with: 'Oscar'
  fill_in :player2name, with: 'Will'
  click_button 'Submit'
end
