class RecipesController < ApplicationController

    def show
        @recipe = Recipe.find_by_id(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def edit
        @recipe = Recipe.find_by_id(params[:id])
    end

    def create
        @recipe = Recipe.create(name: params[:recipe][:name])
        redirect_to recipe_path(@recipe)
    end

    def update
        @recipe = Recipe.find_by_id(params[:id])
        @recipe.name = params[:ingredient][:name]
        @recipe.save
        redirect_to recipe_path(@recipe)
    end
end
