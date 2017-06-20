# == Schema Information
#
# Table name: likes
#
#  id          :integer          not null, primary key
#  like        :boolean
#  user_id     :integer
#  location_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Like < ActiveRecord::Base
	belongs_to :user
	belongs_to :location

	validates_uniqueness_of :user, scope: :location

end
