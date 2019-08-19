class Event < ApplicationRecord
	belongs_to :admin, class_name: "User", foreign_key: "admin_id" 
	has_many :attendances
	has_many :participants, class_name: "User", foreign_key: "participants_id",through: :attendances

	validates	:start_date, 
		presence: true, 
		inclusion: { in: (DateTime.now..Date.today+100.years) }
	

	validates :duration,
		presence: true

		validate :validate_duration?


		def validate_duration?
			if duration > 0 && duration % 5 == 0
				return true
			else
				errors.add(:duration, "La durée doit être suprieur à 0 et multiple de 5 ")
				return false
			end		
		end	

	validates :title,
		presence: true,
		length: { in: (5..140)}

	validates :description,
		presence: true,
		length: { in: (20..1000)}	

	validates :price,
		presence: true,
		inclusion: 1..1000

	validates :location,
		presence:true 		


end
