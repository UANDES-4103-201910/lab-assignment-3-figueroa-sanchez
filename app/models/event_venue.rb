class EventVenue < ApplicationRecord
  has_many :events

  def last_attendance
    last_event = Event.where(EventVenue_id:self.id).order(date: :desc).id
    total_tickets = Ticket.where(event_id:last_event)
    total_tickets
  end
end
