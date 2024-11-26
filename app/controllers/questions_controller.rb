class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "Coach : Great !"
    elsif @question.end_with?("?")
      @answer = "Coach : SILLY QUESTION ! Get dressed and go to work !"
    else
      @answer = "Coach : I don't care ! Get dressed and go to work !"
    end
  end
end
