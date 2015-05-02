class DishesController < ApplicationController
  def new
    @user = User.find_by_id(current_user.id)
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.user = current_user
   if @dish.save
      redirect_to welcome_index_path
    else
      render 'new'
    end
  end
  def show

  end

private
  def dish_params
    params.require(:dish).permit(:name, :course, :gluten_free)
  end
end
