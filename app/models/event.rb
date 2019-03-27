class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket_types

  def most_tickets_sold

  end
  def highest_revenue

  end
end
