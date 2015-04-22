class ThrowController < ApplicationController
    SIGNS = ['rock', 'paper', 'scissors']

  def index
  end

  def sign
   @player   = params[:sign]
   @computer = SIGNS.sample
   play
  end

  private

    def play
      case
      when @computer == @player
        @result = "tied"
        flash_result(@result)
      when @computer == "rock" && @player == "paper"   	
      	@result = "lost"
      	flash_result(@result)
      when @computer == "paper" && @player == "rock"
      	@result = "won"
      	flash_result(@result)
      	 when @computer == "rock" && @player == "scissors"    	 
      	@result = "lost"
      	flash_result(@result)
      when @computer == "scissors" && @player == "rock"   	
      	@result = "won"
      	flash_result(@result)
      when @computer == "paper" && @player == "scissors"     	
      	@result = "lost"
      	flash_result(@result)
      when @computer == "scissors" && @player == "paper"
      	@result = "won"
      	flash_result(@result)
      end
    end

    def flash_result(result)
 	  flash[:success] = "You " + result
    end
end
