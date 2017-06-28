# == Schema Information
#
# Table name: location_categories
#
#  id          :integer          not null, primary key
#  category_id :integer
#  location_id :integer
#

class LocationCategory < ActiveRecord::Base
	belongs_to :location
	belongs_to :category
end
