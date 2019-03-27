class EventVenue < ApplicationRecord
  has_many :events

  def last_attendance
      events = Event.where(EventVenue_id:self.id)
      tickets = Ticket.where(Event_id: events.ids)
      count = 0
      for ticket in tickets do
        count += 1
      end
      count
  end
end
