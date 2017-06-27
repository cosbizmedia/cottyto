class LocationCuisines < ActiveRecord::Migration
  def change
  	create_table :location_cuisines do |t|
  		t.integer :cuisinde_id, :location_id
  	end
  end
end
