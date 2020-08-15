class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest, :img_url, :sites
  # has_many :wish_lists
end
