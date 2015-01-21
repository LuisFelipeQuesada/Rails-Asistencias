class AssistanceType < ActiveRecord::Base
	has_one :assistance
	attr_accessible :type, :id
end
