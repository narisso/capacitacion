class Profile < ActiveRecord::Base

  attr_accessible :name, :last_name, :user

  belongs_to :user

end