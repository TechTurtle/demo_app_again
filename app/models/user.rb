class User < ActiveRecord::Base

	validates :email, uniqueness: true
	validates :fname, :lname, :email, :password, presence: true
end
