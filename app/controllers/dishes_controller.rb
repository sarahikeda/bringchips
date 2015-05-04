class DishesController < ApplicationController

  respond_to :html, :js
  def new
    @user = User.find_by_id(current_user.id)
    @dish = Dish.new
    all_events
  end

  def create
    @event = Event.find_by_title(params[:dish][:events])
    @dish = Dish.create(
      name: params[:dish][:name],
      course: params[:dish][:course],
      gluten_free: params[:dish][:gluten_free],
      )
      current_user.dishes << @dish
      @dish.events << @event
      redirect_to user_path(current_user)
  end

  def show
    @dish = Dish.find(params[:id])
    @events = @dish.events
  end

  def all_events
    @created_and_attending = []
    @created_and_attending << current_user.events
    @created_and_attending << current_user.created_events
    @created_and_attending
  end
end
