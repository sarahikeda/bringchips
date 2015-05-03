class OccasionsController < ApplicationController
# necessary?
  def new
    @occasion = Occasion.create(event_id: params[:id])
    @event.attendees << current_user
    redirect_to user_path(current_user.id)
  end

  def show
    @occasion = Occasion.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
    @event.attendees << current_user
  end

  def create
    @occasion = Occasion.new(occasion_params)
      if @occasion.save
        redirect_to "/"
      else
        @occasion.errors
        render "new"
      end
  end
end
