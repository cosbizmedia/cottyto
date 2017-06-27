if Rails.env.production?
	CarrierWave.configure do |config|
		credentials = {
			:provider => 'AWS',
			:aws_access_key_id => ENV['S3_ACCESS_KEY'],
			:aws_secret_access_key => ENV['S3_SECRET_KEY']
		}

		storage = Fog::Storage.new(credentials)
		storage.directories.each do |dir|
    		puts "#{dir.key} (#{dir.location})"
		end

	end
end