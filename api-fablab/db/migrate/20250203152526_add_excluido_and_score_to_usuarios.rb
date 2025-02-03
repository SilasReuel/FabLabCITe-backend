class AddExcluidoAndScoreToUsuarios < ActiveRecord::Migration[8.0]
  def change
    add_column :usuarios, :excluido, :boolean, default: false, null: false
    add_column :usuarios, :score, :integer, default: 1, null: false
  end
end
