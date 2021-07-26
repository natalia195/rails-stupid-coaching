class QuestionsController < ApplicationController
  
  def ask
    @question = ""
  end
  
  def answer
    @question = params[:question]
    @resp = ""
    case @question
    when "I am going to work"
      @resp = "Great!"
    when /.+[?$]/
      @resp = "Silly question, get dressed and go to work!"
    else
      @resp = "I don't care, get dressed and go to work!"
    end
  end
end
