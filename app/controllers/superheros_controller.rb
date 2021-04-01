class SuperherosController < ApplicationController
    def index 
        superheros = Superhero.all
        render json: superheros
    end
end
