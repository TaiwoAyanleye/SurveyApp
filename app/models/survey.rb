class Survey < ActiveRecord::Base
	has_many :questions, :dependent => :destroy
	accepts_nested_attributes_for :questions, allow_destroy: true

	def generate_score(participant)
		score = 0
		t = participant.questions & questions
		if t.size == 0
			return 'none'
		else
			t.each do |a|
				s = a.solutions & participant.solutions
				s.each do |d|
					if d.correct?
						score+=1
					end
				end
			end
			return ((score / questions.size.to_f) * 100).round(2).to_s + ' %'
		end
	end
end
