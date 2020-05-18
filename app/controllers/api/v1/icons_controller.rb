class Api::V1::IconsController < ApplicationController
    def index
        @icons = Icon.all
        render json: @icons, status: :ok
    end

    def create
        icon = Icon.create(icon_params)
        render json: {icon: IconSerializer.new(icon)}
    end

    def update
        icon = Icon.find(params[:id])
        icon.update(icon_params)
        if icon.valid? 
            render json: { icon: IconSerializer.new(icon) }
        else
            render json: { error: 'failed to update icon' }, status: :not_acceptable
        end
    end

    def destroy
        icon = Icon.find(params[:id])
        icon.destroy
        render json: {message: "icon successfully deleted"}
    end

    private

    def icon_params
        params.require(:icon).permit(:images)
    end
end
