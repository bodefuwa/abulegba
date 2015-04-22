class ThrowController < ApplicationController
  def index
  end

  def sign
    throw.play(sign)
  end
end
