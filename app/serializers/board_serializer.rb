class BoardSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :project_id, :cards

  def cards
    ActiveModel::SerializableResource.new(self.object.cards, each_serializer: CardSerializer)
  end

end
