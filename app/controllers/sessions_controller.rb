class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    if User.find_by_uid(auth_hash["uid"])
      redirect_to users_path, :alert => "Welcome Back."
    else 
      redirect_to new_user_path, :alert => "Thanks for signing up!"
    end

    render :text => auth_hash["uid"]
  end
  
  def destroy
  end

  def failure
  end
end
