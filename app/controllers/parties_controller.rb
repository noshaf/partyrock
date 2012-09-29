class PartiesController < ApplicationController
  # before_filter :authenticate_user!, :except => :index

  # include Spotify

  def new
    @party = Party.new
  end

  def edit
  end

  def show
    @songs = Song.where(party_id: params[:id]).order
    @party = Party.find(params[:id])
    @party_tracks = @party.party_tracks
    @song = Song.new
  end

  def index
    @url = parties_url
    @parties = Party.find_all_by_name(params[:search])
    @party = Party.new
    respond_to do |format|
      format.html {  }
      format.js
    end
  end

  def create
    party = Party.new(params[:party])
    party.user = current_user
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
