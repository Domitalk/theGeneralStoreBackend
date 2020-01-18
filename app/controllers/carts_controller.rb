class CartsController < ApplicationController

    def create 
        # byebug
        # @white =  params.require(:user).permit(:id, :name, :updated_at, :created_at)
        # byebug
        @cart = Cart.create({User_id: cart_params["id"]})
        render json: @cart.to_json
    end 

    private 

    def cart_params 
        params.require(:user).permit(:id)
    end 
end
