class Cart < ApplicationRecord
  belongs_to :User
  has_many :CartItems
  has_many :Items, through: :CartItems 
end
