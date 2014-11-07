puts "Let's play Rock Paper Scissors!"

OPTIONS = {"R" => "Rock", "P" => "Paper", "S" => "Scissors"}

def choose_winner(input1, input2)
  if (input1 == "R" && input2 == "S") || (input1 == "S" && input2 == "R")
    puts "Rock smashes Scissors."
  elsif (input1 == "P" && input2 == "S") || (input1 == "S" && input2 == "P")
    puts "Scissors cuts Paper."
  elsif (input1 == "R" && input2 == "P") || (input1 == "P" && input2 == "R")
    puts "Paper covers Rock."
  end
end  

def announce_winner(user_choice, comp_choice)
  if (user_choice == "P" && comp_choice == "R") || (user_choice == "R" && comp_choice == "S") || (user_choice == "S" && comp_choice == "P")
    puts "You win!"
  elsif user_choice == comp_choice
    puts "It's a tie!"
  else
    puts "You lose!"
  end
end  

#create game loop so user can play again if desired

loop do
  
  #ask user to choose either r/p/s

  begin puts "Choose One: (R/P/S)"
    user_choice = gets.chomp.upcase
  end until OPTIONS.keys.include?(user_choice)

  #generate a computer choice randomly and tell user both choices

  comp_choice = OPTIONS.keys.sample

  puts "You picked #{OPTIONS[user_choice]} and the computer picked #{OPTIONS[comp_choice]}..."

  #play game, announce winner
  
  choose_winner(user_choice, comp_choice)
  
  announce_winner(user_choice, comp_choice)

  #offer to play again, or end game and exit

  puts "Would you like to play again? (Y/N)"

  game_on = gets.chomp

break if game_on.upcase == "N"
end
