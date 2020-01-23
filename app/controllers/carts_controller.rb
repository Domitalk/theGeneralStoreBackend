class CartsController < ApplicationController
    def index 
        @carts = Cart.all 
        render json: @carts.to_json
    end 

    def show 
        @user = User.find(params[:id])
        @past_carts = Cart.select {|cart| cart.User_id === @user.id}
        render json: @past_carts.to_json
    end 
    
    def create 
        # byebug
        # @white =  params.require(:user).permit(:id, :name, :updated_at, :created_at)
        @cart = Cart.create({User_id: cart_params["id"], cart_open: true})
        
        @response = {
            cart: @cart,
            items: Item.all
        }
        # byebug
        
        render json: @response.to_json
    end 

    def update 
         
         @cart = Cart.find(params[:id])
         @cart.update(cart_params)
        @new_cart = Cart.create({User_id: @cart.User_id, cart_open: true})

        
        render json: @new_cart

        
    end 

    private 

    def cart_params 
        params.permit(:id, :cart_open)
    end 

end
