class TrueFalse < ApplicationRecord
  belongs_to :question

  #validates :correct_answer, presence: true, if: :question_true_false?
  validates :correct_answer, inclusion: { in: [true, false], message: "must be true or false" }, if: :question_true_false?

  private 
  def question_true_false?
    question.question_type == 'true_false'
  end
end
