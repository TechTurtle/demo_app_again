class Card < ActiveRecord::Base
	validates :user_id, :charity_id, :user_amount, presence: true
end
