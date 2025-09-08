class CalcController < ApplicationController
  def index
    # render ({ :template => "calc/square"})
    render :square
  end

  def square
    @number = params[:number].to_f
    @result = @number * @number

    render :square_result
  end

  def square_root
    @number = params[:number].to_f
    @result = Math.sqrt(@number)
    
    render :root_results
  end

  def payment

  end

  def random
  
  end

end
