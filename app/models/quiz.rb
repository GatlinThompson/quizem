class Quiz < ApplicationRecord
    has_many :quiz_questions, dependent: :destroy
    has_many :questions, through: :quiz_questions
    accepts_nested_attributes_for :questions, allow_destroy: true
end
