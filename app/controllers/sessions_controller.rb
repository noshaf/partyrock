class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    uid = auth_hash["uid"].to_s
    user = User.new(:uid => uid)
    if user.save
      redirect_to user_path(user), :alert => "Welcome Back."
    else
      user.save
      redirect_to new_user_path, :alert => "Thanks for signing up!"
    end
    # render :text => auth_hash["uid"]
  end
  
  def destroy
  end

  def failure
  end
end
