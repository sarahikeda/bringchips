class DishesController < ApplicationController
  def new
    @user = User.find_by_id(params[:user_id])
    @dish = Dish.new
  end

  def create
    @dish = Dish.create
  end

  def show

  end

end
