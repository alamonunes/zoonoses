json.extract! funcionario, :id, :cpf, :nome, :rg, :sexo, :telefone, :data, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
