class User < ApplicationRecord
    has_many :Carts
    has_many :CartItems, through: :Carts
end
