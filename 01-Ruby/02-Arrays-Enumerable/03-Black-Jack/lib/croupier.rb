require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  "Your score is #{player_score} and the bank score is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  "Your final score is #{player_score} and the bank final score is #{bank_score}"
end


def play_game
  # TODO: make the user play from terminal in a while loop that will stop
  #       when the user will not be asking for  a new card
  if player_score > 21
  	return "You lose."
  elsif player_score == 21
  	return "You win!"
  elsif player_score => bank_score
  	return "You win!"
  else
  	return "You lose."
end
end
