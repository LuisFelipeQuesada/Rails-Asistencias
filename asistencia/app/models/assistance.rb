class Assistance < ActiveRecord::Base
	belongs_to :department
	belongs_to :tipo_asistencium, :foreign_key => "tipo_asistencia_id"
  attr_accessible :name,:department_id, :requirements, :horas, :notas, :tipo_asistencia_id, :disponibilidad, :vencimiento
  
  # Validaciones
  validates :name, :presence => {:message => "Debe ingresar el nombre del autor o al menos la inicial de este"}
  validates :horas, :presence => {:message => "Debe ingresar las horas que requiere la asistencia"},
  									:numericality => {:message => "Debe ingresar solo numeros"}
  validates :notas, :presence => {:message => "Debe ingresar una nota"},
  									:numericality => {:message => "Debe ingresar solo numeros"}
end
