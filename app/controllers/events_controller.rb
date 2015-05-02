class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
  end


  def new
    @event = Event.new
    render 'new'
  end
end
