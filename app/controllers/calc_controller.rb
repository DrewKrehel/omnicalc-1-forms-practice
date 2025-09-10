class CalcController < ApplicationController
  def square
    # render ({ :template => "calc/square"})
    render :square
  end

  def square_action
    @number = params[:number].to_f
    @result = @number * @number

    render :square_results
  end

  def square_root
    render :square_root
  end
  
  def square_root_action
    @number = params[:number].to_f
    @result = Math.sqrt(@number)
    
    render :square_root_results
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

    render :payment_results
  end

  def random
    render :random
  end

  def random_action
    @min = params[:min].to_f
    @max = params[:max].to_f
    @random = rand(@min..@max)

    render :random_results
  end

end
