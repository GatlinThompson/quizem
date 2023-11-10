class Question < ApplicationRecord
    has_many :multiple_choices, inverse_of: :question, dependent: :destroy
    has_one :true_false, inverse_of: :question, dependent: :destroy
    enum question_type: {true_false: "true_false", multiple_choice: "multiple_choice"}
    accepts_nested_attributes_for :multiple_choices, reject_if: :not_multiple_choice?, allow_destroy: true
    accepts_nested_attributes_for :true_false, reject_if: :not_true_false?
    validates :header, :question_type, presence: true

private 
  def not_multiple_choice?
    question_type != 'multiple_choice' 
  end

  def not_true_false?
    question_type != 'true_false'
  end


end
