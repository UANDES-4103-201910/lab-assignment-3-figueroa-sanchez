class EventVenue < ApplicationRecord
  has_many :events

  def last_attendance
      events = Event.where(event_venue_id:self.id)
      tickets = Ticket.where(event_id: events.ids)
      count = 0
      tickets.each do |ticket|
        count += 1
      end
      count
  end
end
