class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    uid = auth_hash["uid"]
    user = User.new(:uid => uid)
    if user.save
      redirect_to new_user_path, :alert => "Thanks for signing up!"
    else
      redirect_to users_path
    end
  end
  
  def destroy
  end

  def failure
  end
end
