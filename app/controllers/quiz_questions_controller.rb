class QuizQuestionsController < ApplicationController

    before_action :setup_quiz_question

  def new
  end

  def destroy
  end

  private

    def setup_quiz_question
      @quiz = Quiz.new(quiz_questions: [QuizQuestion.new])
      @questions = Question.all
    end
end
