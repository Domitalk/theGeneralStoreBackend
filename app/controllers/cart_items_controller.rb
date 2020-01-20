class CartItemsController < ApplicationController
    def create
        alreadychosen = false 
        cartid = cart_params["id"]
        itemid = item_params["id"]
        holditem = {}

        @allcartitems = CartItem.all 
        @allcartitems.each do |ci|
            if (ci.Cart_id == cartid) && (ci.Item_id == itemid) 
                @cartitem = ci
                newquantity = @cartitem.quantity += 1 
                @cartitem.update(
                    quantity: newquantity
                )
                alreadychosen = true 
                
            end 
        end 

        if (!alreadychosen) 
            @cartitem = CartItem.create({
            Cart_id: cart_params["id"],
            Item_id: item_params["id"], 
            quantity: 1
        })
        end 

        render json: @cartitem.to_json

    end 

    private 
    def cart_params 
        params.require(:cart).permit(:id)
    end 
    def item_params
        params.require(:item).permit(:id)
    end 
end
