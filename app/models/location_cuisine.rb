# == Schema Information
#
# Table name: location_cuisines
#
#  id          :integer          not null, primary key
#  cuisine_id  :integer
#  location_id :integer
#

class LocationCuisine < ActiveRecord::Base
	belongs_to :location
	belongs_to :cuisine
end
