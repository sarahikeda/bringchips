class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @user = User.find_by_id(params[:id])
    @event = Event.new
    render 'new'
  end

  def create
    @user = User.find_by_id(params[:id])
    @event = Event.new(event_params, creator: @user)
    if @event.save
      session[:user_id] = @event.id
      render "new"
    else
      @event.errors
      render "new"
    end
  end

  def show
  end

private

def event_params
    params.require(:event).permit(:title, :description, :street_address, :city, :state, :zip, :date, :start_time)
  end
end
