class CartsController < ApplicationController
    def index 
        @carts = Cart.all 
        render json: @carts.to_json
    end 

    #shows the current cart
    def show 
        @user = User.find(params[:id])
        @past_carts = Cart.select {|cart| cart.User_id === @user.id}
        render json: @past_carts.to_json
    end 
    
    #creates new cart when logging in, and returns with it all the items for initial render 
    def create 
        @cart = Cart.create({User_id: cart_params["id"]})
        
        @response = {
            cart: @cart,
            items: Item.all
        }
        
        render json: @response.to_json
    end 

    def update 
        @cart = Cart.find(params[:id])
        @cart.update(cart_params)
        @new_cart = Cart.create({User_id: @cart.User_id})

        render json: @new_cart
    end 

    private 

    def cart_params 
        params.permit(:id, :cart_open)
    end 

end
