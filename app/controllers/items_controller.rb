class ItemsController < ApplicationController
    def index 
        @items = Item.all 
        render json: @items.to_json 
    end 

    # This is actually for the User's picture update
    def update 
        @user = User.find(params[:id])
        @user.update({
            picture: params["picture"]
        })
        render json: @user.to_json

    end 
end
