class Throw < ActiveModel
   SIGNS = ['rock', 'paper', 'scissors']

   
   def play(sign)
     computer = SIGNS.sample
     user 	  = sign
     
    case 
      when computer == user
        return "tie"
      when computer == "rock" && user == "paper"
      	return "loss"
      when computer == "paper" && user == "rock"
      	return "win"
      	 when computer == "rock" && user == "scissors"
      	return "loss"
      when computer == "scissors" && user == "rock"
      	return "win"
      	 when computer == "paper" && user == "scissors"
      	return "loss"
      when computer == "sissors" && user == "paper"
      	return "win"
   end
end