class FriendsController < ApplicationController

    before_action :authenticate, only: [:index, :create]

    def index
        @friends = Friend.all
        render json: @friends
    end

    def show
        @friend = Friend.find(params[:id])
        render json: @friend
    end

    def create
        @friend = Friend.create(friend_params)
        render json: @friend
    end

    def destroy
        @friend = Friend.find(params[:id])
        @friend.destroy
        render json: {message: "Friend successfull deleted."}
    end

    private 

    def friend_params
        params.require(:friend).permit(:name, :dob).merge(user_id: @user_id)
    end

end
