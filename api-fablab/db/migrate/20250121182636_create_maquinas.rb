class CreateMaquinas < ActiveRecord::Migration[8.0]
  def change
    create_table :maquinas do |t|
      t.string :apelido, limit: 50
      t.string :nome_tecnico, limit: 100
      t.string :imagem
      t.text :descricao

      t.timestamps
    end
  end
end
