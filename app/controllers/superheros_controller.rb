class SuperherosController < ApplicationController
    def index 
        superheros = Superhero.all
        render json: superheros
    end
    def create
        superhero = Superhero.create(hero_params)
        render json: superhero
    end
    def update
        superhero = Superhero.find(params[:id])
        superhero.update(hero_params)
        if superhero.valid?
            render json: superhero
        else
            render json: superhero.errors, status:400
        end
    end
    

private
    def hero_params
        params.require(:hero).permit(:name,:age,:enjoys)
    end
end
