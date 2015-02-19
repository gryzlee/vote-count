json.array!(@comittees) do |comittee|
  json.extract! comittee, :id, :name
  json.url comittee_url(comittee, format: :json)
end
