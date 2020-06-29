class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def index
        @users = User.all
        render json: @users, status: :ok
    end

    def searchByUsername
        user = User.all.find{|u| u.username == params[:username]}
        if user
            render json: user
        else
            render json: { error: 'failed to find user' }, status: :not_acceptable
        end
    end


    def create
        user = User.create(user_params)
        render json: {user: UserSerializer.new(user)}
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)

        if user.valid? 
            render json: { user: UserSerializer.new(user) }
        else
            render json: { error: 'failed to update user' }, status: :not_acceptable
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {message: "user successfully deleted"}
    end

    private

    def user_params
        params.require(:user).permit(:username, :full_name, :favorite_color, :email, :password, icon_img: [])
    end


end
