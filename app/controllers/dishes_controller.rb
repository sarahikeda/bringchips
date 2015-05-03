class DishesController < ApplicationController
  def new
    @user = User.find_by_id(current_user.id)
    @dish = Dish.new
  end

  def create
      @event = Event.find_by_title(params[:dish][:events])
    @dish = Dish.create(
      name: params[:dish][:name],
      course: params[:dish][:course],
      gluten_free: params[:dish][:gluten_free],
      event_id: @event.id
      )
      current_user.dishes << @dish
      p params[:dish][:events]

      redirect_to user_path(current_user)
  end
  def show
    @dish = Dish.find(params[:id])
  end

end
