class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @userQuestion = params[:question]
    if @userQuestion
      if @userQuestion == "I am going to work"
        @coachAnswer = "Great"
      elsif @userQuestion.include? "?"
        @coachAnswer = "Silly question, get dressed and go to work!"
      else
        @coachAnswer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
