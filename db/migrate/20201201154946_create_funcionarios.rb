class CreateFuncionarios < ActiveRecord::Migration[6.0]
  def change
    create_table :funcionarios do |t|
      t.string :cpf
      t.string :nome
      t.string :rg
      t.string :sexo
      t.string :telefone
      t.date :data

      t.timestamps
    end
  end
end
