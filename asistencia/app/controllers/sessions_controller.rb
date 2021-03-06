class SessionsController < ApplicationController
  # Con el before_authorization se invoca al método "authorization" el cual permite verificar si se ha iniciado sesión 
  # en el sistema de esta manera, se puede dar permisos a los usuarios de acceder a los recursos de la aplicación
  before_filter :authorization
  
  def create
    omniauth = request.env['omniauth.auth']
#    session[:current_user] =	{:name => omniauth[:info][:name], :nickname => omniauth[:info][:nickname], :provider => omniauth[:provider]}
    user = User.new(:name => omniauth[:info][:name], :nickname => omniauth[:info][:nickname], :email =>  omniauth[:info][:email], :provider => omniauth[:provider])
    if user.valid?
    	user.save
    end
  	@user = User.where("nickname = :nickname and provider = :provider", {:nickname => omniauth[:info][:nickname], :provider => omniauth[:provider]})
  	for user in @user
  		session[:current_user] =	{:id => user['id'], :name => user['name'], :nickname => user['nickname'], :provider => user['provider'], :email => user['email'] }
  	end
  	
    redirect_to assistances_path
  end

  def destroy
    session.delete(:current_user)
    redirect_to '/'
  end
end




#	def create
#		omniauth = request.env["omniauth.auth"]
#		authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
#		if authentication
#			flash[:notice] = "Signed in successfully."
#			redirect_to root_url, :notice => "Signed out!"
#		elsif current_user
#			current_user.authentications.create(:provider => omniauth['provider'], :uid => omniauth['uid'])
#			flash[:notice] = "Authentication successful."
#			redirect_to root_url, :notice => "Signed out!"
#		else
#			user = User.new
#			user.authentications.build(:provider => omniauth ['provider'], :uid => omniauth['uid'])
#			user.save!
#			flash[:notice] = "Signed in successfully."
#			redirect_to root_url, :notice => "Signed out!"
#		end
#	end
#end


#	def create
#		auth = request.env["omniauth.auth"]
#		user = Authorization.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
#		session[:user_id] = user.id
#		redirect_to root_url, :notice => "Signed in!"
#	end

#	def destroy
#		session[:user_id] = nil
#		redirect_to root_url, :notice => "Signed out!"
#	end
#	def create
#		@user = User.find_or_create_from_auth_hash(auth_hash)
#		self.current_user = @user
#		redirect_to '/'
#	end

#	protected

#	def auth_hash
#		request.env['omniauth.auth']
#	end

