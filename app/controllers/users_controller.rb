class UsersController < ApplicationController
  def new
  end

  def edit
  end

  def show
  end

  def index
    @user = User.new(:uid => params[:uid])
    @user.save
    @uid = params[:uid]
  end

  def destroy
  end
  
  def update
  end

  def destroy
  end
end
