class AudioSerializer < ActiveModel::Serializer
  attributes :id, :name, :audio_path, :category, :length
  has_many :favorites 
  has_many :users, through: :favorites
end
