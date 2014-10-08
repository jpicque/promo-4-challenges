require_relative 'black_jack'

def state_of_the_game(score, bank)
  "Your score is #{score}, bank is #{bank}!"
end

def end_game_message(player_score, bank_score)
  if player_score > 21
    "You are over 21... you lose."
  elsif player_score == 21
    "Black Jack!"
  elsif player_score > bank_score
    "You beat the bank! You win."
  else
    "Bank beats you! You lose."
  end
end

def asking_for_card?(score)
  # If the score is more than 21 we immediately exit the method by returning false
  return false if score > 21

  puts "Card ? (Type 'y' or 'yes' for a new card)"
  print "> "
  gets.chomp.match(/y/i)
end

def play_game
  puts "*** WELCOME TO OUR FANCY BLACKJACK ***"

  bank_score = pick_bank_score
  player_score = 0

  # While we are the user asks for a card (and has a score < 21)
  while asking_for_card?(player_score)
    player_score += pick_player_card
    puts state_of_the_game(player_score, bank_score)
  end

  puts end_game_message(player_score, bank_score)
end
