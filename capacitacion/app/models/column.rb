class Column < ActiveRecord::Base
  
  attr_accessible :name , :board

  belongs_to :board
  has_many :tasks

end