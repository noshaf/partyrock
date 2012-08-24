class Song < ActiveRecord::Base
  attr_accessible :name, :track_key

  belongs_to :party
end
