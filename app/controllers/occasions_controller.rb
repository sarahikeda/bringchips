class OccasionsController < ApplicationController

  def new
    @occasion = Occasion.new
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
