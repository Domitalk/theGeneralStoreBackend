class CartItemsController < ApplicationController

    # for items added to cart 
    def create
        # to see if new or not 
        alreadychosen = false 
        #pull the current cart's id
        cartid = cart_params["id"]
        #pull the item's id 
        itemid = item_params["id"]

        #just to iterate, collect all the items already added to cart
        @allcartitems = CartItem.all 
        # then go through and change quanitity if and only if it's in the cart already
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

        # create a new instance if it's not already in cart
        if (!alreadychosen) 
            @cartitem = CartItem.create({
            Cart_id: cart_params["id"],
            Item_id: item_params["id"], 
            quantity: 1
        })
        end 

        # @item = Item.find(itemid)

        # @sendback = {
        #     cartitem: @cartitem,
        #     item: @item 
        # }
           

        # render json: CartItemsSerializer.new(@cartitem).to_serialized_json

        # @thiscartitems = [] 
        # CartItem.all.each do |ci|
        #     if (ci.Cart_id == cartid) 
        #         @thiscartitems << ci 
        #     end 
        # end 

        
        # render json: CartItemSerializer.new(@thiscartitems.options)
        # render json: @thiscartitems.to_json
        
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
