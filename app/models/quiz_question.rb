class QuizQuestion < ApplicationRecord
  belongs_to :quiz
  belongs_to :question

  validates :question_id, presence: true;
  validates :points, numericality: { greater_than: 0 }
end
