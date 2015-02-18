json.array!(@constituencies) do |constituency|
  json.extract! constituency, :id, :name, :voters, :voivodeship_id
  json.url constituency_url(constituency, format: :json)
end
