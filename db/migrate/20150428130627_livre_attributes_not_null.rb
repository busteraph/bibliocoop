class LivreAttributesNotNull < ActiveRecord::Migration
  def change
    change_column :livres, :titre, :string, null: false
    change_column :livres, :auteur, :string, null: false
  end
end
