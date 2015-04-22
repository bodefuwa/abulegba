class Throw < ActiveModel
   SIGNS = ['rock', 'paper', 'scissors']

   
   def play(computer, player)
      @computer = @computer
      @player = player
      case
      when @computer == @player
        @result = "tied"
      when @computer == "rock" && @player == "paper"
        @result = "lost"
      when @computer == "paper" && @player == "rock"
        @result = "won"
         when @computer == "rock" && @player == "scissors"
        @result = "lost"
      when @computer == "scissors" && @player == "rock"
        @result = "won"
      when @computer == "paper" && @player == "scissors"
        @result = "lost"
      when @computer == "sissors" && @player == "paper"
        @result = "won"
      end
    end
end