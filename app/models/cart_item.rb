class CartItem < ApplicationRecord
  belongs_to :Cart
  belongs_to :Item
end
