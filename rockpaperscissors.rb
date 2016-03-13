    #The game should ask player 1 for their choice of "rock", "paper", or "scissors". (use gets)
    #The game should then randomly select the computer's selection
    #The game then outputs who won in this format: "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"
    #Rock beats scissors
    #Paper beats Rock
    #Scissors beats Paper

class Game
  attr_accessor :player_one_choice, :computer
end

CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

loop do

  begin
    puts "Welcome to Paper Rock Scissors"
    puts "Choose one: (p/r/s)"
    player_one_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_one_choice)

  computer_choice = CHOICES.keys.sample

 def display_winning_message(winning_choice)
  case winning_choice
  when "p"
    puts "Paper beats Rock!"
  when "r"
    puts "Rock beats Scissors!"
  when "s"
    puts "Scissors beats Paper!"
 end
end

if player_one_choice == computer_choice
    puts "It's a tie!"
elsif (player_one_choice == "p" && computer_choice == "r") ||
    display_winning_message(player_one_choice)
    puts "Player: Paper vs Computer: Rock ---- PLAYER WINS!"
elsif (player_one_choice == "r" && computer_choice == "s") ||
    display_winning_message(player_one_choice)
    puts "Player: Rock vs Computer: Scissors ----- PLAYER WINS!"
elsif (player_one_choice == "s" && computer_choice == "p") ||
    display_winning_message(player_one_choice)
    puts "Player: Scissors vs Computer: Paper ---- PLAYER WINS!"
else
    display_winning_message(computer_choice)
    puts "Computer wins!"
  end

end
