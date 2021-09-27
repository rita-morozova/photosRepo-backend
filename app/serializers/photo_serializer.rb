class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image, :user_id, :username, :created_at
end
