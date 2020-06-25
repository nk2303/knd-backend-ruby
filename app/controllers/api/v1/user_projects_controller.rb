class Api::V1::UserProjectsController < ApplicationController


    def index
        @user_projects = UserProject.where(user_id: current_user.id )
        @project = @user_projects.map { |obj| obj }
        @project_ids = @user_projects.map { |obj| obj.project_id }
        @projector = Project.where(id: @project_ids)
        @projector = @projector + @project
        render json: @projector, status: :ok
    end

    def findProjectsFromSearchdUser
        projects = UserProject.all.filter{|u_p| u_p.user_id == params[:searchUserId].to_i}
        render json: projects
    end

    # def create
    #     puts 'LOOK HERE'
    #     puts user_project_params
    #     target = UserProject.find{|u_p| u_p.user_id == current_user.id.to_i && u_p.project_id == user_project_params.project_id.to_i }
    #     puts target
    #     if target
    #         user_project = UserProject.find(target[:id])
    #         user_project.update(user_project_params)
    #         if user_project.valid? 
    #             render json: { user_project: UserProjectSerializer.new(user_project) }
    #         else
    #             render json: { error: 'failed to update project' }, status: :not_acceptable
    #         end
    #     else
    #         user_project = UserProject.create(user_project_params)
    #         render json: {user_project: UserProjectSerializer.new(user_project)}
    #     end
    # end

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
