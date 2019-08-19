class Attendance < ApplicationRecord
	belongs_to :participant, class_name: "User", foreign_key: "participant_id"
	belongs_to :event
 after_create :notification_send

  def notification_send
    AttendanceMailer.notification_email(self).deliver_now
  end

end
