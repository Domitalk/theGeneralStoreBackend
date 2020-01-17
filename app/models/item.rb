class Item < ApplicationRecord
    has_many :CartItems
    has_many :Carts, through: :CartItems 
end
