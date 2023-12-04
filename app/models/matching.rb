class Matching < ApplicationRecord
  belongs_to :question

  validates :prompt_1, :prompt_2, :prompt_3, :prompt_4, presence: true, if: :question_matching?
  
  validates :answer_1, :answer_2, :answer_3, :answer_4, presence: true, if: :question_matching?

  validates :choice_1, :choice_2, :choice_3, :choice_4, presence: true, if: :question_matching?

  private 
  def question_matching?
    question.question_type == 'matching'
  end
end
