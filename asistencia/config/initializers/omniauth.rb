#	OmniAuth.config.logger = Logger.new(STDOUT)
#	OmniAuth.logger.progname = "omniauth"
OmniAuth.config.logger = Rails.logger

#OmniAuth.config.full_host = "http://localhost:3000"

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, 'xYVdVFFAaWjyBThGSFxdCQ', 'OaZkWOiqHGL21kwmzaAWL7znzs6QsMmMpXNUnnEfxW4'
	provider :facebook, '287751558009743', 'ecf2a8934908c2952b4e11b83fcfafb2'
end

