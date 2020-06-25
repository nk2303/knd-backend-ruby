class CardSerializer < ActiveModel::Serializer
  attributes :id, :content,  :card_title, :board_id, :image
end
