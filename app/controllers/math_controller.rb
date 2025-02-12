class MathController < ApplicationController
  def new_square
    render "math/new_square"
  end

  def square_result
    @number = params[:number].to_f
    @result = @number ** 2
    render "math/square_result"
  end

  def new_square_root
    render "math/new_square_root"
  end

  def square_root_result
    @number = params[:number].to_f
    @result = Math.sqrt(@number)
    render "math/square_root_result"
  end

  def new_random
    render "math/new_random"
  end

  def random_result
    @min = params[:min].to_i
    @max = params[:max].to_i
    @random_number = rand(@min..@max)
    render "math/random_result"
  end

  def new_payment
    render "math/new_payment"
  end

  def payment_result
    @apr = params[:apr].to_f
    @years = params[:years].to_i
    @principal = params[:principal].to_f
  
    monthly_rate = (@apr / 100) / 12
    months = @years * 12
  
    @monthly_payment = @principal * (monthly_rate / (1 - (1 + monthly_rate) ** -months))
  
    # Round the APR to four decimal places and format as a percentage
    @formatted_apr = format("%.4f", @apr)
    
    render "math/payment_result"
  end  
  
end
