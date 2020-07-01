class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :topic, :background_image, :others, :user_id, :boards, :user_projects
  def boards
    ActiveModel::SerializableResource.new(self.object.boards, each_serializer: BoardSerializer)
  end

  ##
  def user_projects
    ActiveModel::SerializableResource.new(self.object.user_projects, each_serializer: UserProjectSerializer)
  end

end
