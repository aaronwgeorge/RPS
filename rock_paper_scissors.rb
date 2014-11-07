puts "Let's play Rock Paper Scissors!"

OPTIONS = {"R" => "Rock", "P" => "Paper", "S" => "Scissors"}

#create game loop so user can play again if desired

loop do
  
  #ask user to choose either r/p/s

  begin puts "Choose One: (R/P/S)"
    user_choice = gets.chomp.upcase
  end until OPTIONS.keys.include?(user_choice)

  #generate a computer choice randomly and tell user both choices

  comp_choice = OPTIONS.values.sample

  puts "You picked #{OPTIONS[user_choice]} and the computer picked #{comp_choice}..."

  #3 conditions - you win, comp wins, or tie

  case user_choice
  when "P"
    if comp_choice == "Rock"
      puts "Paper covers rock. You win!"
    elsif comp_choice == "Scissors"
      puts "Scissors cuts paper. You lose!"
    else
      puts "It's a tie!"
    end
  when "R"
    if comp_choice == "Paper"
      puts "Paper covers rock. You lose!"
    elsif comp_choice == "Scissors"
      puts "Rock smashes scissors. You win!"
    else
      puts "It's a tie!"
    end
  when "S"
    if comp_choice == "Rock"
      puts "Rock smashes scissors. You lose!"
    elsif comp_choice == "Paper"
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
