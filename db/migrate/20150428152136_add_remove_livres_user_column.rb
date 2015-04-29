class AddRemoveLivresUserColumn < ActiveRecord::Migration
  def change
    change_table :livres do |t|
      t.references :proprietaire, index: true
      t.references :emprunteur, index: true
    end
    remove_column :livres, :user_id
  end
end
