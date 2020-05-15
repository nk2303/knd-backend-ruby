class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name, :favorite_color, :email, :password_digest
end
