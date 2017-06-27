class LocationCuisines < ActiveRecord::Migration
  def change
  	create_table :location_cuisines do |t|
  		t.integer :cuisine_id, :location_id
  	end
  end
end
