json.extract! athlete, :id, :name, :age, :weight, :sex, :description, :created_at, :updated_at
json.url athlete_url(athlete, format: :json)
