puts "Let's play Rock Paper Scissors!"

#create game loop so user can play again if desired

loop do
  
  #ask user to choose either r/p/s

  puts "Choose One: (R/P/S)"

  user_choice = gets.chomp

  #generate a computer choice randomly and tell user both choices

  options = ["R", "P", "S"]

  comp_choice = options.sample

  def convert_choice_to_word(choice)
    if choice.upcase == "P"
      choice = "Paper"
    elsif choice.upcase == "R"
      choice = "Rock"
    elsif choice.upcase == "S"
      choice = "Scissors"
    end
  end

  puts "You picked #{convert_choice_to_word(user_choice)} and the computer picked #{convert_choice_to_word(comp_choice)}..."

  #3 conditions - you win, comp wins, or tie

  case user_choice.upcase
  when "P"
    if comp_choice.upcase == "R"
      puts "Paper covers rock. You win!"
    elsif comp_choice.upcase == "S"
      puts "Scissors cuts paper. You lose!"
    else
      puts "It's a tie!"
    end
  when "R"
    if comp_choice.upcase == "P"
      puts "Paper covers rock. You lose!"
    elsif comp_choice.upcase == "S"
      puts "Rock smashes scissors. You win!"
    else
      puts "It's a tie!"
    end
  when "S"
    if comp_choice.upcase == "R"
      puts "Rock smashes scissors. You lose!"
    elsif comp_choice.upcase == "P"
      puts "Scissors cuts paper. You win!"
    else
      puts "It's a tie!"
    end      
  end

  #offer to play again, or end game and exit

  puts "Play again? (Y/N)"

  game_on = gets.chomp

break if game_on.upcase == "N"
end
