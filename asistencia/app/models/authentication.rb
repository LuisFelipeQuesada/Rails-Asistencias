class Authentication < ActiveRecord::Base
  attr_accessible :create, :destroy, :index, :provider, :uid, :user_id
  
#	def apply_omniauth(omniauth)
#		self.email = omniauth['info']['email'] if email.blank?
#		authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
#	end
end
