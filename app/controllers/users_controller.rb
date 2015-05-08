class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @user.errors
      render "new"
    end
  end

  def show
    @dishes = current_user.dishes.order(created_at: :desc).limit(5)
    @created_events = current_user.created_events
  end

  private
  def user_params
    params.require(:user).permit(:username, :name, :email, :password, :password_confirmation)
  end
  def all_events
    @created_and_attending = []
    @created_and_attending << current_user.events
    @created_and_attending << current_user.created_events
    @created_and_attending
  end
end