class ThrowController < ApplicationController
    SIGNS = ['rock', 'paper', 'scissors']

  def index
  end

  def sign
    @player   = params[:sign]
    @computer = SIGNS.sample

    if @player == @computer
      flash[:success] = "Tied"
      @result = "Tied"
    else 
    	flash[:success] = "You Lost"
    	@result = "Lost"
    end
  end
end
