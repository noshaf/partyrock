class Party < ActiveRecord::Base
  attr_accessible :name, :songs

  has_many :songs


  # Used for the Spotify API call

  def party_tracks
    party_tracks = []
    self.songs.each do |song|
      party_tracks << song.track 
    end
    party_tracks.join(',')
  end

end
