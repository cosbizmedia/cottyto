# == Schema Information
#
# Table name: cuisines
#
#  id   :integer          not null, primary key
#  name :string
#

class Cuisine < ActiveRecord::Base
	validates :name, presence: :true, length: { minimum: 2, maximum: 40 }
	has_many :location_cuisines
end
