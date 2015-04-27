class CreateLivres < ActiveRecord::Migration
  def change
    create_table :livres do |t|
      t.string :titre
      t.string :auteur
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :livres, :users
  end
end
