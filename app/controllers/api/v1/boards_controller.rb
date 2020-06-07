class Api::V1::BoardsController < ApplicationController
    def index
        @boards = Board.all
        render json: @boards, status: :ok
    end

    def show
        board = Board.find(params[:id])
        render json: board
    end

    def create
        board = Board.create(board_params)
        render json: {board: BoardSerializer.new(board)}
    end

    def update
        board = Board.find(params[:id])
        board.update(board_params)
        if board.valid? 
            render json: { board: BoardSerializer.new(board) }
        else
            render json: { error: 'failed to update board' }, status: :not_acceptable
        end
    end

    def destroy
        board = Board.find(params[:id])
        board.destroy
        render json: {message: "board successfully deleted"}
    end

    private

    def board_params
        params.require(:board).permit(:title, :image, :project_id, cards_attributes: [:id, :card_title, :content])
        
    end
end
