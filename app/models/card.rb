class Card < ActiveRecord::Base

	has_many :comments, dependent: :destroy
	validates :subject, presence: true,
		length: { minimum: 5 }
end
