class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :topic, :background_image, :others, :icon_img, :user_id, :boards
  def boards
    ActiveModel::SerializableResource.new(self.object.boards, each_serializer: BoardSerializer)
  end
end
