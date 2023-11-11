class Question < ApplicationRecord
    #Base Question Validation
    has_rich_text :title
    validates :question_type, :bank, :title, presence: true
    enum question_type: {
        true_false: "true_false",
        multiple_choice: "multiple_choice", 
        multiple_answers: "multiple_answers",
        essay: "essay" 
    }

    #Multiple Choice Validation
    has_many :multiple_choices, inverse_of: :question, dependent: :destroy
    accepts_nested_attributes_for :multiple_choices, reject_if: :not_multiple_choice?

    #True False Validation
    has_one :true_false, inverse_of: :question, dependent: :destroy
    accepts_nested_attributes_for :true_false, reject_if: :not_true_false?

    #Multiple Answer Validation
    has_many :multiple_answers, inverse_of: :question, dependent: :destroy
    accepts_nested_attributes_for :multiple_answers, reject_if: :not_multiple_answers?
    
    private 
    def not_multiple_choice?
        question_type != 'multiple_choice' 
    end

    def not_true_false?
        question_type != 'true_false'
    end

    def not_multiple_answers?
        question_type != 'multiple_answers' 
    end
end
