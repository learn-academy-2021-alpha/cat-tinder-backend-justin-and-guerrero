class SuperherosController < ApplicationController
    def index 
        superheros = Superhero.all
        render json: superheros
    end
    def create
        superhero = Superhero.create(hero_params)
        if superhero.valid?
            render json: superhero
        else
            render json: superhero.errors, status:422
        end
    end
    def update
        superhero = Superhero.find(params[:id])
        superhero.update(hero_params)
        if superhero.valid?
            render json: superhero
        else
            render json: superhero.errors, status:422
        end
    end
    

private
    def hero_params
        params.require(:superhero).permit(:name,:age,:enjoys)
    end
end
