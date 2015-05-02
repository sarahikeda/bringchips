class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @user = current_user
    @event = Event.new
    render 'new'
  end

  def create
    @event = Event.new(event_params)
    @event.creator = @current_user
    if @event.save
      redirect_to welcome_index_path
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
