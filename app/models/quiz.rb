class Quiz < ApplicationRecord
    has_many :quiz_questions
    has_many :questions, :through => :quiz_questions

    accepts_nested_attributes_for :quiz_questions, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true
    
end
