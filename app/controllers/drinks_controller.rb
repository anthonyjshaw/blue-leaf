class DrinksController < ApplicationController
  before_action :set_drinks, only: %i[show edit destroy]
  def index
    @drinks = Drink.all
    @categories = Drink::CATEGORIES
  end

  def show; end

  def new
    @drink = Drink.new
  end

  def category
    @drinks = Drink.where(category: params[:category].capitalize)
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      redirect_to category_path(@drink.category.downcase)
    else
      render :new
    end
  end

  def drink_params
    params.require(:drink).permit(:name, :category, :quantity, :price, :size, :description)
  end

  def set_drinks
    @drink = Drink.find(params[:id])
  end
end
