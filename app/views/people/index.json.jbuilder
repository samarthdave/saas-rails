json.array!(@people) do |person|
  json.extract! person, :id, :username, :email
  json.url person_url(person, format: :json)
end
