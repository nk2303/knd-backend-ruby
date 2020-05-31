class Api::V1::ProjectsController < ApplicationController
    def index
        @projects = Project.all
        render json: @projects, status: :ok
    end

    def show
        project = Project.find(params[:id])
        render json: project
    end

    def create
        new_project_params = { topic: project_params[:topic], background_image: project_params[:background_image], user_id: user_id}
        project = Project.create(new_project_params)
        render json: {project: ProjectSerializer.new(project)}
    end

    def update
        project = Project.find(params[:id])
        project.update(project_params)
        if project.valid? 
            render json: { project: ProjectSerializer.new(project) }
        else
            render json: { error: 'failed to update project' }, status: :not_acceptable
        end
    end

    def destroy
        project = Project.find(params[:id])  
        project.destroy
        render json: {message: "project successfully deleted"}
    end

    private

    def project_params
        params.require(:project).permit(:topic, :background_image, :others, :icon_img, :user_id, boards_attributes: [:id, :title, :image, cards_attributes: %i[id content]])
    end
end
