class UsersController < ApplicationController



    def login 
        @users = User.all 
        render json: @users.to_json

    end 
    

end
