json.array!(@solutions) do |solution|
  json.extract! solution, :id, :question_id, :correct, :participant_id
  json.url solution_url(solution, format: :json)
end
