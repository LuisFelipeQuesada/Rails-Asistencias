class AssistanceTypesController < ApplicationController
  # GET /assistance_types
  # GET /assistance_types.json
  def index
    @assistance_types = AssistanceType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assistance_types }
    end
  end

  # GET /assistance_types/1
  # GET /assistance_types/1.json
  def show
    @assistance_type = AssistanceType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assistance_type }
    end
  end

  # GET /assistance_types/new
  # GET /assistance_types/new.json
  def new
    @assistance_type = AssistanceType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assistance_type }
    end
  end

  # GET /assistance_types/1/edit
  def edit
    @assistance_type = AssistanceType.find(params[:id])
  end

  # POST /assistance_types
  # POST /assistance_types.json
  def create
    @assistance_type = AssistanceType.new(params[:assistance_type])

    respond_to do |format|
      if @assistance_type.save
        format.html { redirect_to @assistance_type, notice: 'Assistance type was successfully created.' }
        format.json { render json: @assistance_type, status: :created, location: @assistance_type }
      else
        format.html { render action: "new" }
        format.json { render json: @assistance_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assistance_types/1
  # PUT /assistance_types/1.json
  def update
    @assistance_type = AssistanceType.find(params[:id])

    respond_to do |format|
      if @assistance_type.update_attributes(params[:assistance_type])
        format.html { redirect_to @assistance_type, notice: 'Assistance type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assistance_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assistance_types/1
  # DELETE /assistance_types/1.json
  def destroy
    @assistance_type = AssistanceType.find(params[:id])
    @assistance_type.destroy

    respond_to do |format|
      format.html { redirect_to assistance_types_url }
      format.json { head :no_content }
    end
  end
end
