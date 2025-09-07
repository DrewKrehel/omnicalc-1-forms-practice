class CalcController < ApplicationController
  def index
    render :square
  end

  def square
    @number = params[:number].to_f
    @result = @number * @number

    render :square_results
  end

  def square_root
  
  end

  def payment

  end

  def random
  
  end

end
