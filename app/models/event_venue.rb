class EventVenue < ApplicationRecord
  has_many :events

  def last_attendance
    return
  end
end
