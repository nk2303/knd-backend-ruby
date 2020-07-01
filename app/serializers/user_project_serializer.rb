class UserProjectSerializer < ActiveModel::Serializer
  attributes :id, :user, :project_id, :admin_permission
end
