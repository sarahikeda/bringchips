class OccasionsController < ApplicationController

  def new
    @occasion = Occasion.create(event_id: params[:id])
    @occasion.users << current_user
    redirect_to user_path(current_user.id)
  end

  def show
    @occasion = Occasion.find(params[:id])
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
