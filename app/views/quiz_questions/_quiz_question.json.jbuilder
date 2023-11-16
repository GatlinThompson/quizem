json.extract! quiz_question, :id, :points, :question_id, :created_at, :updated_at
json.url quiz_question_url(quiz_question, format: :json)
