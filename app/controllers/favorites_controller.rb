class FavoritesController < ApplicationController

    def index
        favorites = Favorite.all 
        render json: favorites
    end 

    def create 
        favorite = Favorite.create(favorite_params)
        render json: favorite
    end 

    def show
        favorite = Favorite.find_by(id: params['id'])
        render json: favorite
    end 

    def destroy 
        favorite = Favorite.find_by(id: params['id'])
        favorite.delete 
        render json: favorite
    end 


    private 
    def favorite_params
        params.require(:favorite).permit(:user_id, :audio_id)
        # render json: favorite 
    end 

end
