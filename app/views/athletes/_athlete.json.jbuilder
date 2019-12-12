json.extract! athlete, :id, :name, :sex, :age, :weight, :description, :created_at, :updated_at
json.url athlete_url(athlete, format: :json)
