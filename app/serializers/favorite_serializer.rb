class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :audio_id 
  belongs_to :audio 
  belongs_to :user
end
