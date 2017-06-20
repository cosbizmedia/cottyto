class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
    	t.boolean :like
    	t.integer :user_id
    	t.integer :location_id
    	t.timestamps
    end
  end
end
