class QuizQuestionController < ApplicationController

    before_action :set_quiz

  def destroy

    puts @quiz
    puts "###############################"
    @quiz.quiz_questions.find_by(question_id: params[:id]).destroy
    redirect_to edit_quiz_path(@quiz), notice: 'Question removed from quiz.'
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end
end
