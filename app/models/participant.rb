class Participant < ActiveRecord::Base
	has_many :solutions
	has_many :questions, through: :solutions
end
