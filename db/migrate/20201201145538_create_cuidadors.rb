class CreateCuidadors < ActiveRecord::Migration[6.0]
  def change
    create_table :cuidadors do |t|
      t.string :cpf
      t.string :nome
      t.string :rg
      t.string :sexo
      t.string :telefone
      t.date :datanasc

      t.timestamps
    end
  end
end
