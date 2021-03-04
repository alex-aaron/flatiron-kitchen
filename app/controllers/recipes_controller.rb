class RecipesController < ApplicationController

    def show
        @recipe = Recipe.find_by_id(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def edit
        @recipe = Recipe.find_by_id(params[:id])
        @ingredients = @recipe.ingredients.build
    end

    def create
        @recipe = Recipe.create(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    def update
        @recipe = Recipe.find_by_id(params[:id])
        @recipe.update(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, ingredient_ids:[])
    end
end
