class EventsController < ApplicationController

  def index
    @events = Event.all.order('date DESC')
  end

  def new
    @user = current_user
    @event = Event.new
    render 'new'
  end

  def create
    @event = Event.new(event_params)
    @event.creator_id = current_user.id
    if @event.save
      redirect_to user_path(current_user)
    else
      @event.errors
      render "new"
    end
  end
  def edit
    @event = Event.find(params[:id])
    @event.attendees << current_user
    redirect_to user_path(params[:id])
  end
  def show
    @event = Event.find_by_id(params[:id])
  end

private

def event_params
    params.require(:event).permit(:title, :description, :street_address, :city, :state, :zip, :date, :start_time)
  end
end
