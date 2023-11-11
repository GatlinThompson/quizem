class MultipleAnswer < ApplicationRecord
  belongs_to :question

  validates :option, presence: true, if: :question_multiple_answers?

  private 
  def question_multiple_answers?
    question.question_type == 'multiple_answers'
  end
end
