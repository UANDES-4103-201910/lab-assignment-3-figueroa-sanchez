class TicketType < ApplicationRecord
  belongs_to :category
  belongs_to :event
  has_many :ticket_orders
end
