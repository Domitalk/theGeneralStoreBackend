class UsersController < ApplicationController

    def show 
        @user = User.find(params[:id])
        @past_carts = @user.carts 
        render json: @past_carts.to_json
    end 

    def login 
        @users = User.all 
        render json: @users.to_json

    end 
    

end
