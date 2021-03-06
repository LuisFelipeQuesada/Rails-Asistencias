class AdminSessionsController < ApplicationController
  # Con el before_authorization se invoca al método "authorization" el cual permite verificar si se ha iniciado sesión en el
  # sistema de esta manera, se puede dar permisos a los usuarios de acceder a los recursos de la aplicación
  before_filter :authorization, :except => [:new, :create]

	def new
	end

	def create
		user = AdministrativeUser.authenticate(params[:username], params[:pass_hash])
		if user
			session[:user_id] = user.id
			redirect_to assistances_path#, :notice => "Sesion iniciada"
		else
			flash[:notice] = "Nombre de usuario o password incorrectos"
			render "new"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/login'#, :notice => "Session cerrada"
	end
end

