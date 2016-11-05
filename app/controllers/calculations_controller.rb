class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params[:number].to_f

    @answer = @number*@number
  end

  def square_root
    @number = params[:number].to_f

    answer_raw = @number**0.5
    @answer = answer_raw.round(2)
  end

  def square_root
    @number = params[:number].to_f

    answer_raw = @number**0.5
    @answer = answer_raw.round(2)
  end

  def random
    @min = params[:min].to_i
    @max = params[:max].to_i

    @answer = rand(@min...@max)
  end

  def payment
    @interest = params[:interest].to_f
    @years = params[:years].to_f
    @principal = params[:principal].to_f
    @arp = @interest/100

    @answer = (@arp/1200 * @principal) / (1-(1+(@arp/1200)) ** (-12 * @years))
  end

end
