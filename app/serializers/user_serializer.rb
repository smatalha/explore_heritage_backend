class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url, :sites, :bio, :email
  # has_many :wish_lists
end
