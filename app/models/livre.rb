class Livre < ActiveRecord::Base
  belongs_to :user
  
  validates :user_id, :titre, :auteur, presence: true
  
end
