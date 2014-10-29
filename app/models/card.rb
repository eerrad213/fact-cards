class Card < ActiveRecord::Base

	has_many :comments

	validates :subject, presence: true,
		length: { minimum: 5 }
end
