class SuperherosController < ApplicationController
    def index 
        superheros = Superhero.all
        render json: superheros
    end
    def create
        superhero = Superhero.create(hero_params)
        render json: superhero
    end

private
    def hero_params
        params.require(:hero).permit(:name,:age,:enjoys)
    end
end
