class PartiesController < ApplicationController

  # before_filter :authenticate_user!, :except => :index

  def new
    @party = Party.new
  end

  def edit
  end

  def show
    @party = Party.find(params[:id])
  end

  def index
    @party = Party.new
  end

  def create
    party = Party.new(params[:party])
    if party.save
      redirect_to party_path(party)
    else 
      redirect_to new_party_path, :alert => "Error"
    end
  end
  
  def update
  end

  def destroy
  end
end
