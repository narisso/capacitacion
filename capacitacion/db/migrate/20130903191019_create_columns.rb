class CreateColumns < ActiveRecord::Migration
  def change
 
     create_table :columns do |t|
      t.string :name
      t.references :boards
	  t.timestamps
	end 
 end
 
 end
