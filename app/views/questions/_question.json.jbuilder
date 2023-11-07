json.extract! question, :id, :header, :question_type, :created_at, :updated_at
json.url question_url(question, format: :json)
