class Task < ActiveRecord::Base
  
  attr_accessible :name, :description, :column

  belongs_to :column

end