class Boards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.references :user
	  t.timestamps
    end
  end
end
