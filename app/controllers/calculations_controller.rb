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
end
