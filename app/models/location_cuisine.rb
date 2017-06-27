class LocationCuisine < ActiveRecord::Base
	belongs_to :location
	belongs_to :cuisine
end