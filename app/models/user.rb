class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :events_admin, foreign_key: 'admin_id', class_name: 'Event', dependent: :destroy
	has_many :attendances
	has_many :events_participated, foreign_key: 'participant_id', class_name: 'Attendance', dependent: :destroy 
	
	after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end  

end
