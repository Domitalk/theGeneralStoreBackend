class CartsController < ApplicationController
    def index 
        @carts = Cart.all 
        render json: @carts.to_json
    end 

    def create 
        # byebug
        # @white =  params.require(:user).permit(:id, :name, :updated_at, :created_at)
        # byebug
        @cart = Cart.create({User_id: cart_params["id"]})
        @response = {
            cart: @cart,
            items: Item.all
        }
        # byebug
        render json: @response.to_json
    end 

    private 

    def cart_params 
        params.require(:user).permit(:id)
    end 
end
