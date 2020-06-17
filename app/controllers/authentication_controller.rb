class AuthenticationController < ApplicationController

    def login
        @user = User.find_by(email: params[:email])

        if @user

            if @user.authenticate(params[:password])
                token = create_token(@user)

                render json: {
                    token: token,
                    friends: @user.friends,
                    user_id: @user.id,
                    user_name: @user.name,
                    user_email: @user.email
                }  
            else
                render json: {message: "Invalid username or password"}, status: :unauthorized
            end
        else
            render json: {message: "Invalid username or password"}, status: :unauthorized
        end
    end

end
 