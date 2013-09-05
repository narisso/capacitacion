class Columns < ActiveRecord::Migration
	def change
    	create_table :columns do |t|
      		t.string :name
      		t.references :board
	  		t.timestamps
		end 
 	end
 end
