#Mastermind code breaking game

class Mastermind
  colours = ['R', 'B', 'G', 'Y', 'P', 'O']
  attr_accessor :guess
  def initialize
    @mode = 0 
    @guess = []
    @hint = []
    @code = []
    @human_player = HumanPlayer.new
    @computer_player = ComputerPlayer.new
  end


#player selection fro maker or breaker
def choose_mode
  valid = false
  while valid == false
    puts "Hi. Would you like to make or break the code?"
    puts "Enter 1 to break and 2 to make! :  "
    puts
    @mode = gets.chomp.to_i

    if @mode > 0 && mode <= 2
      valid = true
    else
      puts "Invalid selection, please choose 1 or 2."
    end
  end
end


end