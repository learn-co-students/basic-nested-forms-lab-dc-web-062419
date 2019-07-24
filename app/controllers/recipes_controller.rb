class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: "Water") #this does nothing
    @recipe.ingredients.build(name: "Water") #this does nothing
    # @recipe.ingredients.build(name: "Water") #this does nothing
  
  end

  def create
    @recipe = Recipe.create(recipe_params)
    # @recipe.ingredients.build(recipe_params[:ingredients_attributes])
    # @recipe.ingredients.build(recipe_params[:ingredients_attributes])
    # byebug
    @recipe.save
  end

  private

  def recipe_params
     params.require(:recipe).permit(:title,
        ingredients_attributes: [:name, :quantity] 
      )
  end


end
