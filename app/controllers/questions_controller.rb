class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = 'i can\'t hear that'
    elsif @question == 'i am going to work'
      @answer = 'great'
    elsif @question.ends_with?('?')
      @answer = 'silly question, get dressed and go to work'
    else
      @answer = 'i don\'t care, do whatever you want'
    end
  end
end
