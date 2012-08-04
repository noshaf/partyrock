class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    uid = auth_hash["uid"].inspect
    user = User.new(:uid => "324523452")
    if user.save
      redirect_to user_path(user), :alert => "Welcome Back."
    else
      redirect_to new_user_path, :alert => "Thanks for signing up!"
    end
    # render :text => auth_hash["uid"]
  end
  
  def destroy
  end

  def failure
  end
end
