class Api::V1::CardsController < ApplicationController
    def index
        @cards = Card.all
        render json: @cards, status: :ok
    end

    def create
        card = Card.create(card_params)
        render json: {card: CardSerializer.new(card)}
    end

    def update
        card = Card.find(params[:id])
        card.update(card_params)
        if card.valid? 
            render json: { card: CardSerializer.new(card) }
        else
            render json: { error: 'failed to update card' }, status: :not_acceptable
        end
    end

    def destroy
        card = Card.find(params[:id])
        card.destroy
        render json: {message: "card successfully deleted"}
    end

    private

    def card_params
        params.require(:card).permit(:card_title, :content, :board_id, :image)
    end
    
end
