class AplicationsController < ApplicationController
  # GET /aplications
  # GET /aplications.json
  def index
#    raise current_admin_user.to_yaml
    if current_admin_user
    	if current_admin_user.username != "root"
    		@aplications = Aplication.all
    		@root = "noroot"
    	else
    		@aplications = Aplication.all
    		@root = "root"
    	end
    else
    	@aplications = Aplication.where("user_id = ?", session[:current_user][:id])
    	@root = "student"
		end
#  	@user = User.where("nickname = :nickname and provider = :provider", {:nickname => session[:current_user][:nickname], :provider => session[:current_user][:provider]})
#    for user in @user
#    	user_id = user.id
#    end
#    @aplications = Aplication.where("user_id = ?", session[:current_user][:id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aplications }
    end
  end

  # GET /aplications/1
  # GET /aplications/1.json
  def show
    @aplication = Aplication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aplication }
    end
  end

  # GET /aplications/new
  # GET /aplications/new.json
  def new
    @aplication = Aplication.new
		@assistance = Assistance.find(params[:id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aplication }
    end
  end

  # GET /aplications/1/edit
  def edit
    @aplication = Aplication.find(params[:id])
  end

  # POST /aplications
  # POST /aplications.json
  def create
#    raise (params[:assistance_id]).to_yaml
    @aplication = Aplication.new
    @aplication.user_id = params[:user_id]
    @aplication.assistance_id = params[:assistance_id]

    respond_to do |format|
      if @aplication.save
        format.html { redirect_to @aplication, notice: 'Aplication was successfully created.' }
        format.json { render json: @aplication, status: :created, location: @aplication }
      else
        format.html { render action: "new" }
        format.json { render json: @aplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aplications/1
  # PUT /aplications/1.json
  def update
    @aplication = Aplication.find(params[:id])

    respond_to do |format|
      if @aplication.update_attributes(params[:aplication])
        format.html { redirect_to @aplication, notice: 'Aplication was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aplications/1
  # DELETE /aplications/1.json
  def destroy
    @aplication = Aplication.find(params[:id])
    @aplication.destroy

    respond_to do |format|
      format.html { redirect_to aplications_url }
      format.json { head :no_content }
    end
  end
end
