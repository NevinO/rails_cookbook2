class IngredientsController < ApplicationController

  def create
    Ingredient.create(ingredient_params)
    redirect_to(ingredients_path)
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy
    redirect_to(ingredients_path)
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def index
    @ingredients = Ingredient.all.order(:name)
  end

  def new
    @ingredient = Ingredient.new
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    ingredient = Ingredient.find(params[:id])
    ingredient.update(ingredient_params)
    redirect_to(ingredients_path)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end