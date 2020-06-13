class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users, status: :ok
    end

    def show
        user = User.all.find{|u| u.username == params[:id]}
        puts user
        # puts params[:username]
        puts "fatty"
        render json: user
    end

    # def findusername
    #     user = User.all.find{|u| u.username == params[:id]}
    #     puts user
    #     puts "kim ewww"
    #     render json: user
    # end

    def create
        user = User.create(user_params)
        render json: {user: UserSerializer.new(user)}
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        puts 'LOOK HERE'
        puts user.username
        puts user.icon_img
        puts user
        
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
