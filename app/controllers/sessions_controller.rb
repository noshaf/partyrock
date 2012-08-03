class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']['uri']

    render :text => auth_hash.inspect
  end
  
  def destroy
  end

  def failure
  end
end
