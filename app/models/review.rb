# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  rating      :integer
#  food        :integer
#  ambience    :integer
#  service     :integer
#  value       :integer
#  comment     :text
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#  location_id :integer
#

class Review < ActiveRecord::Base
	
	belongs_to :location
	belongs_to :user

end
