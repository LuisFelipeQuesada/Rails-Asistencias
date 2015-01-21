class Requirement < ActiveRecord::Base
  belongs_to :assistance
  attr_accessible :requirement
end
