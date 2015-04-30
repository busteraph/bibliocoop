class Livre < ActiveRecord::Base
  belongs_to :proprietaire, class_name: "User", foreign_key: "proprietaire_id"
  belongs_to :emprunteur, class_name: "User", foreign_key: "emprunteur_id"

  validates :titre, :auteur, presence: true
  
  scope :disponible, -> { where(emprunteur_id: 'null') }
end
