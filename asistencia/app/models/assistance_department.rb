class AssistanceDepartment < ActiveRecord::Base
  belongs_to :assistance
  belongs_to :department
  attr_accessible :assistance_id, :department_id
end
