class AuthenticationController < ApplicationController

    def login
        @user = User.find_by(email: params[:email])

        if @user

            if @user.authenticate(params[:password])
                token = create_token(@user)

                render json: {
                    token: token,
                    friends: @user.friends,
                    user_id: @user.id
                }
            else
                render json: {message: "nice try asshole!!!"}, status: :unauthorized
            end
        else
            render json: {message: "nice try asshole"}, status: :unauthorized
        end
    end

end
