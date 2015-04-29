class AddRemoveLivresForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :livres, :users, name: :proprietaire
    add_foreign_key :livres, :users, name: :emprunteur
    remove_foreign_key :livres, :users
  end
end
