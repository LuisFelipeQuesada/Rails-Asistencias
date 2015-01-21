class ApplicationController < ActionController::Base
	protect_from_forgery
  helper_method :current_user, :current_admin_user

  private

#	def current_user
#		  @_current_user ||= session[:current_user_id] &&
#      User.find_by_id(session[:current_user_id])
#  end
  def current_user
    session[:current_user]
  end

  def current_admin_user
  	@current_admin_user ||= AdministrativeUser.find(session[:user_id]) if session[:user_id]
  end
  
  def authorization
  #raise session.to_yaml
  	if AdministrativeUser.where("username = ?", session[:name]) || User.where("name = ?", session[:name])
  	else
  		redirect_to '/'
  		flash[:notice] = "Inicie sesion para usar esta funcionalidad"
  	end
  end
#  protected

#  def current_user
#    @current_user ||= User.find_by_id(session[:user_id])
#  end

#  def signed_in?
#    !!current_user
#  end

#  helper_method :current_user, :signed_in?

#  def current_user=(user)
#    @current_user = user
#    session[:user_id] = user.id
#  end
#end
#	
#	helper_method :current_user

#	private

#	def current_user
#		@current_user ||= User.find(session[:user_id]) if session[:user_id]
#	end
end

