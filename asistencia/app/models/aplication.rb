class Aplication < ActiveRecord::Base
  belongs_to :user
  belongs_to :assistance
  attr_accessible :assistance_id, :user_id
end
