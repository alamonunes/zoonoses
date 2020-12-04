class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.references :cuidador, null: false, foreign_key: true
      t.string :nome
      t.string :sexo
      t.string :raca
      t.string :tipo
      t.integer :idade
      t.float :peso

      t.timestamps
    end
  end
end
