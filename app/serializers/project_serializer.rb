class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :topic, :background_image, :others, :icon_img, :user_id
end
