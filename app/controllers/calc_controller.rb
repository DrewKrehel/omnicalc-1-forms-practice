class CalcController < ApplicationController
  def index
    render :square
  end

  def square
    @number = params[:]

    render :square
  end

  def square_root
  
  end

  def payment

  end

  def random
  
  end

end
