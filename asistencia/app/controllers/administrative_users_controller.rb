class AdministrativeUsersController < ApplicationController
  
  # Con el before_authorization se invoca al método "authorization" el cual permite verificar si se ha iniciado sesión en el
  # sistema de esta manera, se puede dar permisos a los usuarios de acceder a los recursos de la aplicación
  before_filter :authorization, :except => ["new"]#, "create"]
  
  # GET /administrative_users
  # GET /administrative_users.json
  def index
    @administrative_users = AdministrativeUser.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @administrative_users }
    end
  end

  # GET /administrative_users/1
  # GET /administrative_users/1.json
  def show
    @administrative_user = AdministrativeUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @administrative_user }
    end
  end

  # GET /administrative_users/new
  # GET /administrative_users/new.json
  def new
    @administrative_user = AdministrativeUser.new
    @department = Department.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @administrative_user }
    end
  end

  # GET /administrative_users/1/edit
  def edit
    @administrative_user = AdministrativeUser.find(params[:id])
    @department = Department.all
  end

  # POST /administrative_users
  # POST /administrative_users.json
  def create
    @administrative_user = AdministrativeUser.new(params[:administrative_user])
    
    respond_to do |format|
      if @administrative_user.save
      	if session[:user_id].nil?
        	@administrative_user.create_session_for_registered_user(params[:username], params[:password])
        	session[:user_id] = @administrative_user.id
        end
	      format.html { redirect_to @administrative_user, notice: 'Administrative user was successfully created.' }
	      format.json { render json: @administrative_user, status: :created, location: @administrative_user }
      else
        format.html { render action: "new" }
        format.json { render json: @administrative_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /administrative_users/1
  # PUT /administrative_users/1.json
  def update
    @administrative_user = AdministrativeUser.find(params[:id])

    respond_to do |format|
      if @administrative_user.update_attributes(params[:administrative_user])
        format.html { redirect_to @administrative_user, notice: 'Administrative user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @administrative_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrative_users/1
  # DELETE /administrative_users/1.json
  def destroy
    @administrative_user = AdministrativeUser.find(params[:id])
    @administrative_user.destroy

    respond_to do |format|
      format.html { redirect_to administrative_users_url }
      format.json { head :no_content }
    end
  end
end
