class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
