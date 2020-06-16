class UsersController < ApplicationController

    before_action :authenticate, only: [:index, :show]

    def index
        @users = User.all
        render json: @users, include: [:friends] 
    end
    
    def show
        @user = User.find(params[:id])
        render json: @user, include: [:friends] 
    end

    def create
        @user = User.new(user_params)

            if @user.save
                render json: @user
            else
                render json: { message: @user.errors.messages }
            end
    end

    # def update
    #     @user = User.find(params[:id])
    #     @user.update(
    #         name: params[:name],
    #         email: params[:email],
    #         password: params[:password],
    #         phone_number: params[:phone_number]
    #     )
    #     render json: @user
    # end

    # def destroy
    #     @user = User.find(params[:id])
    #     @user.destroy
    #     render json: {message: "User successfully deleted"}
    # end

    private

    def user_params 
        params.require(:user).permit(:name, :email, :password, :phone_number)
    end

end
