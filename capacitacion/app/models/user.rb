class User < ActiveRecord::Base
  
  validates_uniqueness_of :username
  attr_accessible :username, :password, :token
  
  has_many :boards
  has_one :profile

end