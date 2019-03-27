class Event < ApplicationRecord
  has_many :tickets
  belongs_to :event_venue, optional:true

  def most_tickets_sold

  end
  def highest_revenue

  end
end
