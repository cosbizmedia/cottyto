# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#  picture     :string
#  user_id     :integer
#
# Indexes
#
#  index_locations_on_slug  (slug) UNIQUE
#

class Location < ActiveRecord::Base

  belongs_to :user
  has_many :likes
  has_many :location_cuisines
  has_many :cuisines, through: :location_cuisines
  has_many :location_categories
  has_many :categories, through: :location_categories
	
	extend FriendlyId
  	friendly_id :name, use: :slugged

  mount_uploader :picture, PictureUploader
  validate :picture_size

  def thumbs_up_total
    self.likes.where(like: true).size
  end

  def thumbs_down_total
    self.likes.where(like: false).size
  end

  	private

  	def picture_size
  		if picture.size > 3.megabytes
  			errors.add(:picture, "Should be less than 3MB")
  		end
  	end

end
