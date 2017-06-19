# == Schema Information
#
# Table name: locations
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slug          :string
#  profile_image :string
#  picture       :string
#  user_id       :integer
#
# Indexes
#
#  index_locations_on_slug  (slug) UNIQUE
#

class Location < ActiveRecord::Base

  belongs_to :user
	
	extend FriendlyId
  	friendly_id :name

  	mount_uploader :picture, PictureUploader
  	validate :picture_size

  	private

  	def picture_size
  		if picture.size > 3.megabytes
  			errors.add(:picture, "Should be less than 3MB")
  		end
  	end

end
