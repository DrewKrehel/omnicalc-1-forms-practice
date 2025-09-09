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
    
    render :root_result
  end

  def payment
    render :payment
  end

  def payment_action
    @apr_input = params[:apr].to_f
    @apr = (@apr_input / 100) / 12
    @years = params[:years].to_f
    @months = @years * 12
    @principal = params[:principal].to_f
    
    if @apr == 0
      return @principal / @months
    end

    @numerator = @apr * @principal
    @denominator = 1 - (1 + @apr) ** -@months

    @payment = @numerator / @denominator

    render :payment_result
  end

  def random
    render :random
  end

  def random_action
    @min = params[:min].to_f
    @max = params[:max].to_f
    @random = rand(@min..@max)

    render :random_result
  end

end
