class RecipesController < ApplicationController

  def create
    Recipe.create(recipe_params)
    redirect_to(recipes_path)
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to(recipes_path)
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all.order(:name)
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    redirect_to(recipes_path)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :category_id, :vegetarian, :instructions, { ingredient_ids: [] })
  end

end