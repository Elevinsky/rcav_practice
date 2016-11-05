class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params[:number].to_f

    @answer = @number*@number
  end
end
