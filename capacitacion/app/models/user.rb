class User < ActiveRecord::Base
  
  attr_accessible :username, :password, :token
  
  has_many :boards
  has_one :profile

end