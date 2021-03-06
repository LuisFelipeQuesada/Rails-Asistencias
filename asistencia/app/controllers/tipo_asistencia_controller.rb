class TipoAsistenciaController < ApplicationController
  # GET /tipo_asistencia
  # GET /tipo_asistencia.json
  def index
		@tipo_asistencia = TipoAsistencium.all
  	if current_admin_user
    	if current_admin_user.username != "root"
    		#where("tipo_asistencia_id = ?", current_admin_user.department_id)
    		@root = "noroot"
    	else
    		@root = "root"
    	end
    else
    	@root = "noroot"
		end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_asistencia }
    end
  end

  # GET /tipo_asistencia/1
  # GET /tipo_asistencia/1.json
  def show
    @tipo_asistencium = TipoAsistencium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_asistencium }
    end
  end

  # GET /tipo_asistencia/new
  # GET /tipo_asistencia/new.json
  def new
    @tipo_asistencium = TipoAsistencium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_asistencium }
    end
  end

  # GET /tipo_asistencia/1/edit
  def edit
    @tipo_asistencium = TipoAsistencium.find(params[:id])
  end

  # POST /tipo_asistencia
  # POST /tipo_asistencia.json
  def create
    @tipo_asistencium = TipoAsistencium.new(params[:tipo_asistencium])

    respond_to do |format|
      if @tipo_asistencium.save
        format.html { redirect_to tipo_asistencia_path }#@tipo_asistencium, notice: 'Tipo asistencium was successfully created.' }
        format.json { render json: @tipo_asistencium, status: :created, location: @tipo_asistencium }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_asistencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_asistencia/1
  # PUT /tipo_asistencia/1.json
  def update
    @tipo_asistencium = TipoAsistencium.find(params[:id])

    respond_to do |format|
      if @tipo_asistencium.update_attributes(params[:tipo_asistencium])
        format.html { redirect_to @tipo_asistencium, notice: 'Tipo asistencium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_asistencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_asistencia/1
  # DELETE /tipo_asistencia/1.json
  def destroy
    @tipo_asistencium = TipoAsistencium.find(params[:id])
    @tipo_asistencium.destroy

    respond_to do |format|
      format.html { redirect_to tipo_asistencia_url }
      format.json { head :no_content }
    end
  end
end
