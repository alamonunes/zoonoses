json.extract! cuidador_animal, :id, :nome, :sexo, :raca, :tipo, :idade, :peso, :created_at, :updated_at
json.url cuidador_animal_url(cuidador_animal, format: :json)
