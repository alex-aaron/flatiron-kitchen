class IngredientsController < ApplicationController
    def index
    end

    def show
        @ingredient = Ingredient.find_by_id(params[:id])
    end

    def new
        @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.create(name: params[:ingredient][:name])
        redirect_to ingredient_path(@ingredient)
    end

    def edit
        @ingredient = Ingredient.find_by_id(params[:id])
    end

    def update
        @ingredient = Ingredient.find_by_id(params[:id])
        @ingredient.name = params[:ingredient][:name]
        @ingredient.save
        redirect_to ingredient_path(@ingredient)
    end
end
