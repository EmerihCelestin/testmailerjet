class Event < ApplicationRecord
	belongs_to :admin, class_name: "User", foreign_key: "admin_id" 
	has_many :attendances
	has_many :participants, class_name: "User", foreign_key: "participants_id",through: :attendances

	validates	:start_date, 
		presence: true, if: :start_date? 
	

	validates :duration,
		presence: true, if: :validate_duration?
	
		def start_date?
			if start_date !=nil
				if start_date > Time.now
					true
				else
					errors.add(:start_date, "Ton event doit être dans le futur!")	
				end
			else
				errors.add(:start_date)
			end	
		end
		def validate_duration?
			if duration !=nil
				if duration > 0 && duration % 5 == 0
					return true
				else
					errors.add(:duration, "La durée doit être suprieur à 0 et multiple de 5 ")
					return false
				end
			else
				errors.add(:duration)	
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
