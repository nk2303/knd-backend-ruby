class Api::V1::UserProjectsController < ApplicationController


    def index
        puts "IT GET TO THE WRONG ONE"
        @user_projects = UserProject.where(user_id: current_user.id )
        @project = @user_projects.map { |obj| obj }
        @project_ids = @user_projects.map { |obj| obj.project_id }
        @projector = Project.where(id: @project_ids)
        @projector = @projector + @project
        render json: @projector, status: :ok
    end

    def findProjectsFromSearchdUser
        puts "IT GETS TO THE RIGHT ONE"
        projects = UserProject.all.filter{|u_p| u_p.user_id == params[:searchUserId].to_i}
        render json: projects
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
        params.require(:user_project).permit(:project_id, :user_id, :admin_permission)
    end





end
