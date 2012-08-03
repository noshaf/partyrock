class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env

    render :text => auth_hash.inspect
  end
  
  def destroy
  end

  def failure
  end
end
