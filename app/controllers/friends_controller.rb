class FriendsController < ApplicationController
    def index
        @friends = Friend.all
        render json: @friends
    end

    def show
        @friend = Friend.find(params[:id])
        render json: @friend
    end

    def create
        @friend = Friend.create(
            name: params[:name],
            birthday: params[:birthday],
            age: params[:age],
            User_id: params[:User_id]
        )
        render json: @friend
    end

    def update
        @friend = Friend.find(params[:id])
        @friend.update(
            name: params[:name],
            birthday: params[:birthday],
            age: params[:age],
            User_id: params[:User_id]
        )
        render json: @friend
    end

    def destroy
        @friend = Friend.find(params[:id])
        @friend.destroy
        render json: {message: "Friend successfull deleted."}
    end

end
