class Profiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :last_name
      t.references :user
	  t.timestamps
    end
  end
end
