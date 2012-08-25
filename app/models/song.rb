class Song < ActiveRecord::Base
  attr_accessible :name, :artist, :track_key

  validates_presence_of :party_id, :name, :artist, :track_key

  belongs_to :party
end
