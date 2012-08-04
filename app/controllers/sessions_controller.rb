class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    raise auth_hash["uid"].class
    render :text => auth_hash["uid"]
  end
  
  def destroy
  end

  def failure
  end
end
