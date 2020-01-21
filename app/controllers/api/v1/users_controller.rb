class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile 
        render json: { user: UserSerializer.new(current_user) }, status: :accepted 

    def create 
        @user = User.create(user_params)
        if @user.valid? 
            @token = encode_token(uer_id: @user.id) 
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created 
        else 
            render json: { error: 'failed to create user' }, status: :not_acceptable 
        end 
    end 

    private 
    
    def user_params 
        params.require(:user).permit(:name, :password) 
    end 

end