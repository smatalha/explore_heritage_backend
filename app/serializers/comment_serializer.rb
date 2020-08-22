class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content , :site_id, :user_id
  # has_one :user
  # has_one :site
end
