class AssistanceDepartmentsController < ApplicationController
  # GET /assistance_departments
  # GET /assistance_departments.json
  def index
    @assistance_departments = AssistanceDepartment.all

    respond_to do |format|
      format.html # index.html.erb}
      format.json { render json: @assistance_departments }
    end
  end

  # GET /assistance_departments/1
  # GET /assistance_departments/1.json
  def show
    @assistance_department = AssistanceDepartment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assistance_department }
    end
  end

  # GET /assistance_departments/new
  # GET /assistance_departments/new.json
  def new
    @assistance_department = AssistanceDepartment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assistance_department }
    end
  end

  # GET /assistance_departments/1/edit
  def edit
    @assistance_department = AssistanceDepartment.find(params[:id])
  end

  # POST /assistance_departments
  # POST /assistance_departments.json
  def create
    @assistance_department = AssistanceDepartment.new(params[:assistance_department])

    respond_to do |format|
      if @assistance_department.save
        format.html { redirect_to @assistance_department, notice: 'Assistance department was successfully created.' }
        format.json { render json: @assistance_department, status: :created, location: @assistance_department }
      else
        format.html { render action: "new" }
        format.json { render json: @assistance_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assistance_departments/1
  # PUT /assistance_departments/1.json
  def update
    @assistance_department = AssistanceDepartment.find(params[:id])

    respond_to do |format|
      if @assistance_department.update_attributes(params[:assistance_department])
        format.html { redirect_to @assistance_department, notice: 'Assistance department was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assistance_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assistance_departments/1
  # DELETE /assistance_departments/1.json
  def destroy
    @assistance_department = AssistanceDepartment.find(params[:id])
    @assistance_department.destroy

    respond_to do |format|
      format.html { redirect_to assistance_departments_url }
      format.json { head :no_content }
    end
  end
end
