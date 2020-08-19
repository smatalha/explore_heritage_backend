class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :time_stamp
  # has_one :user
  # has_one :site
end
