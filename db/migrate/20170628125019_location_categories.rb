class LocationCategories < ActiveRecord::Migration
  def change
  	create_table :location_categories do |t|
  		t.integer :category_id, :location_id
  	end
  end
end
