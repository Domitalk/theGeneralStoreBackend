class UsersController < ApplicationController

    # def create 
    #     @user = User.create(user_params)
    #     if @user.valid? 
    #         render json: { user: UserSerializer.new(@user) }, status: :created 
    #     else  
    #         render json: { error: 'failed to create user' }, status: :not_acceptable 
    #     end 
    # end 

    def show 
        @user = User.find(params[:id])
        @past_carts = @user.carts 
        render json: @past_carts.to_json
    end 

    def login 
        @users = User.all 
        render json: @users.to_json
    end 

    # private 
    # def user_params 
    #     params.require(:user).permit(:name, :password)
    # end 
end
