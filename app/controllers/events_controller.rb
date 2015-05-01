class EventsController < ApplicationController
  def show
    @events = Event.all
  end


  def new
    @event = Event.new
    render 'new'
  end
end
