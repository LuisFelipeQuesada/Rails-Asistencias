class Department < ActiveRecord::Base
  has_many :assistance
  has_many :message
  attr_accessible :name, :id, :email
  
  # Validaciones
  validates :name, :presence => {:message => "Debe ingresar el nombre del departamento"}
  validates :email, :presence => {:message => "Debe ingresar el correo del departamento"}
end
