class CreateUsuarios < ActiveRecord::Migration[8.0]
  def change
    create_table :usuarios do |t|
      t.string :nome, limit: 100
      t.string :senha
      t.string :email, limit: 100
      t.string :cpf, limit: 11
      t.date :data_nascimento
      t.string :tipo, default: "Usuários"


      t.timestamps
    end
  end
end
