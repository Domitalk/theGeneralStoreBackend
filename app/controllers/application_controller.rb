class ApplicationController < ActionController::API
    #allow auth to check if person is authorized or not only
    before_action :authorized 

    # JWT authorizations 
    def encode_token(payload)
        JWT.encode(payload, 'asdf')
    end 

    # check for header declaring authorization
    def auth_header 
        request.headers['Authorization']
    end 

    # decode the token else give error 
    def decoded_token
        #if there is a header matching then start the decode process
        if auth_header 
            token = auth_header
            begin
                #in a real site hide the secret 'asdf'
                JWT.decode(token, 'asdf', true, algorithm: 'HS256')
            rescue JWT::DecodeError 
                nil 
            end 
        end 
    end 
    
    # check if logged in and return @user instance
    def user_logged_in 
        if decoded_token 
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end 
    end 

    #simple boolean to check if logged in 
    def logged_in? 
        !!user_logged_in 
    end 

    def authorized 
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in? 
    end 
end
