class Livre < ActiveRecord::Base
  belongs_to :user
  
  validates :user_id, :titre, :auteur, presence: true
  
  scope :utilisateur, where("user_id = ?", current_user ) if user_signed_in?

end
