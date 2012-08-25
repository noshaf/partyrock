class SongsController < ApplicationController
include Spotify

	def new
		@party = Party.find(params[:party_id])
		@song = @party.songs.new(:name => params[:name],
														 :artist => params[:artist],
														 :track_key => params[:track_key])
		@song.party = @party
		@party_tracks = @party.party_tracks
		if @song.save
		respond_to do |format|
      format.js
    end
	  else
	  	redirect_to party_path(@party), :alert => "could not add song"
	  end
	end

  def create
    @songs = call(params[:song][:name])[0..25]
    @party_id = params[:song][:party_id]
    respond_to do |format|
      format.js
    end
  end
end