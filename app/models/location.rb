class Location < ActiveRecord::Base
	
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
