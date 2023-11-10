class MultipleChoice < ApplicationRecord
  belongs_to :question, optional: true

  validates :option, presence: true, if: :question_multiple_choice?

  private 
  def question_multiple_choice?
    question.question_type == 'multiple_choice'
  end
end
