class PartiesController < ApplicationController

  before_filter :authenticate_user!, :except => :index

  def new
  end

  def edit
  end

  def show
  end

  def index
  end

  def destroy
  end
  
  def update
  end

  def destroy
  end
end
