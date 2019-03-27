class Event < ApplicationRecord
  has_many :tickets
  belongs_to :event_venue, optional:true

  def self.most_tickets_sold
    events_tickets_count = Event.joins(:tickets).group(:Event_id).count
    best_seller = 1
    events_tickets_count.each do |event, value|
      if events_tickets_count[best_seller]<value
        best_seller = event
      end
    end
    Event.where(id:best_seller)
  end
  def self.highest_revenue
    revenue_by_event = Ticket.group(:Event_id).sum(:price)
    best_revenue = 1
    revenue_by_event.each do |event, value|
      if revenue_by_event[best_revenue]<value
        best_revenue = event
      end
    end
    Event.where(id:best_revenue)
  end
end
