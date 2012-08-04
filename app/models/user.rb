class User < ActiveRecord::Base
  attr_accessible :nickname, :uid
  validates_uniqueness_of :uid
  
end
