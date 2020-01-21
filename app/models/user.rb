class User < ApplicationRecord
    has_secure_password
    has_many :Carts
    has_many :CartItems, through: :Carts

    def carts 
        Cart.all.select do |cart|
            cart.User_id === self.id
        end 
    end 
end
