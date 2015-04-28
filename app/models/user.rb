class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :livres_detenus, class_name: "Livre", foreign_key: "proprietaire_id"
  has_many :livres_pretes, class_name: "Livre", foreign_key: "emprunteur_id"
  
  def bibliotheque
    Livre.where("proprietaire_id = ?", id )
  end

  def emprunts
    Livre.where("emprunteur_id = ?", id )
  end

end