class Ticket < ApplicationRecord
  belongs_to :Category
  belongs_to :Event
  belongs_to :Order
end
