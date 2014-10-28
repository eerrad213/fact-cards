class Card < ActiveRecord::Base
	validates :subject, presence: true,
		length: { minimum: 5 }
end
