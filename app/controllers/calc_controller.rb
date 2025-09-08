class CalcController < ApplicationController
  def index
    # render ({ :template => "calc/square"})
    render :square
  end

  def square_action
    @number = params[:number].to_f
    @result = @number * @number

    render :square_result
  end

  def square_root
    render :root
  end
  
  def square_root_action
    @number = params[:number].to_f
    @result = Math.sqrt(@number)
    
    render :root_results
  end

  def payment

  end

  def random
  
  end

end
