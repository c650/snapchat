class CreateSnaps < ActiveRecord::Migration
  def up
  	create_table :snaps do |t|
  		
  		t.string :image_file
  		t.string :caption
  		t.integer :user_id

  	end
  end

  def down

  	drop_table :snaps
  
  end
end
