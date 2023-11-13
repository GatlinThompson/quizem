class Question < ApplicationRecord
    #Base Question Validation
    has_rich_text :title
    validates :question_type, :title, :bank, presence: true
    enum question_type: {
        true_false: "true_false",
        multiple_choice: "multiple_choice", 
        multiple_answers: "multiple_answers",
        essay: "essay" 
    }

    #For when user creates a new bank on question
    attr_accessor :new_bank

    #Multiple Choice Validation
    has_many :multiple_choices, inverse_of: :question, dependent: :destroy
    accepts_nested_attributes_for :multiple_choices, reject_if: :not_multiple_choice?, allow_destroy: true

    #True False Validation
    has_one :true_false, inverse_of: :question, dependent: :destroy
    accepts_nested_attributes_for :true_false, reject_if: :not_true_false?, allow_destroy: true

    #Multiple Answers Validation
    has_many :multiple_answers, inverse_of: :question, dependent: :destroy
    accepts_nested_attributes_for :multiple_answers, reject_if: :not_multiple_answers?

    #Quiz Question Assocations
    has_many :quizzes, through: :quiz_questions

    has_many :quiz_questions, dependent: :destroy
    
    private 
    #Question Type Checkers
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
