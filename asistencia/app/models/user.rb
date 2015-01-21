class User < ActiveRecord::Base
	has_many :assistance
	has_many :messages
	attr_accessible :name, :email, :nickname, :provider
	
	validates :name, :nickname, :uniqueness => true
end

