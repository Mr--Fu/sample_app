def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		#Use the existing token.
		File.read(token_file).chomp
	else
		#Generate a new token and store it in the token file
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end

SampleApp::Application.config.secret_key_base = '71fabad4fc3a7f2f8ce3483d246d85d5298e89312fede2c8f0fc51c86ae79b29231fe13fde1950580140bf0f94da2ec69a3b5d6918005bbe7a57d98c792391b7'