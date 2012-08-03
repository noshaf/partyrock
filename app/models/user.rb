class User < ActiveRecord::Base
  attr_accessible :nickname, :uid
end
