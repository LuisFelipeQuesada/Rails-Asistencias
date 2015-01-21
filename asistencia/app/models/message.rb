class Message < ActiveRecord::Base
	belongs_to :user
	belongs_to :department
	attr_accessible :title, :body, :user_id, :department_id, :contact_to, :id
	
  # Validaciones
  validates :title, :presence => {:message => "Debe ingresar un nombre para la consulta"}
  validates :body, :presence => {:message => "Debe ingresar una pregunta"}
  validates :contact_to, :presence => {:message => "Debe ingresar el correo electronico"}
end

