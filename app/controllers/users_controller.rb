class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end
    
    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(
            name: params[:name],
            email: params[:email],
            password: params[:password],
            phone_number: params[:phone_number]
        )
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @user.update(
            name: params[:name],
            email: params[:email],
            password: params[:password],
            phone_number: params[:phone_number]
        )
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: {message: "User successfully deleted"}
    end


end
