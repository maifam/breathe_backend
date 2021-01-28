class AudiosController < ApplicationController

    def index
        audios = Audio.all
        render json: audios, :except => [:created_at, :updated_at]
    end 
end
