class Question < ApplicationRecord
    has_many :multiple_choices, inverse_of: :question, dependent: :destroy
    enum question_type: {true_false: "true_false", multiple_choice: "multiple_choice"}
    accepts_nested_attributes_for :multiple_choices, reject_if: :all_blank, allow_destroy: true
end
