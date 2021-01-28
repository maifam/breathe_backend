class User < ApplicationRecord
    has_many :favorites 
    has_many :audios, through: :favorites

    # self.favorites 
end
