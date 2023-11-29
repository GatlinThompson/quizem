class SurveyQuestionsController < ApplicationController

    before_action :setup_survey_question

  def new
  end

  def destroy
  end

  private

    def setup_survey_question
      @survey = Survey.new(survey_questions: [SurveyQuestion.new])
      @questions = Question.all
    end
end
