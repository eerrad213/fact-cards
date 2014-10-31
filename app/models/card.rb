class Card < ActiveRecord::Base

	belongs_to :user

	has_many :comments, dependent: :destroy
	
	validates :subject, presence: true,
		length: { minimum: 5 }
end
