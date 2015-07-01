json.array!(@questions) do |question|
  json.extract! question, :id, :survey_id, :order, :suborder, :content, :response_type
  json.url question_url(question, format: :json)
end
