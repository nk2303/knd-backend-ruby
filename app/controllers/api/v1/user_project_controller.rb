class Api::V1::UserProjectController < ApplicationController


    def index
        @user_projects = UserProject.all
        render json: @user_projects, status: :ok
    end

    def create
        user_project = UserProject.create(user_project_params)
        render json: {user_project: UserProjectSerializer.new(user_project)}
    end

    def destroy
        user_project = UserProject.find(params[:id])
        user_project.destroy
        render json: {message: "Admin Deleted"}
    end

    private

    def user_project_params
        params.require(:user_project).permit(:project_id, :user_id)
    end





end
