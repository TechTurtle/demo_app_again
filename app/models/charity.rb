class Charity < ActiveRecord::Base
	validates :name, :desc, :email, :image, :private, presence: true
end
