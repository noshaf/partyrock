class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']

    render :text => auth_hash.class
  end
  
  def destroy
  end

  def failure
  end
end
