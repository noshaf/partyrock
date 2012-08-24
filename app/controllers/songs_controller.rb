class SongsController < ApplicationController
include Spotify



  def create
    @songs = call(params[:song][:name])
    respond_to do |format|
      format.js
    end
  end
end
